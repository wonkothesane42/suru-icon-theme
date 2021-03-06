build:

clean:

install:
	mkdir -p ~/.local/share/icons/
	find Suru/[1-9]* Suru/scalable Suru/index.theme -exec \
		install -D '{}' ~/.local/share/icons/'{}' \;

install-root:
	find Suru/[1-9]* Suru/scalable Suru/index.theme -exec \
		install -D -m 644 '{}' /usr/share/icons/'{}' \;
	gtk-update-icon-cache /usr/share/icons/Suru

uninstall:
	rm -r ~/.local/share/icons/Suru

uninstall-root:
	rm -r /usr/share/icons/Suru

.PHONY: build clean install install-root uninstall uninstall-root