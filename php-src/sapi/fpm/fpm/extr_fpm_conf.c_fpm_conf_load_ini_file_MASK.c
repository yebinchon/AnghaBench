#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zend_ini_parser_cb_t ;

/* Variables and functions */
 int FAILURE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  ZEND_INI_SCANNER_NORMAL ; 
 int /*<<< orphan*/  ZLOG_ERROR ; 
 int /*<<< orphan*/  ZLOG_SYSERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ fpm_conf_ini_parser ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* ini_filename ; 
 char* ini_include ; 
 scalar_t__ ini_lineno ; 
 int /*<<< orphan*/  ini_recursion ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char*,int) ; 
 scalar_t__ FUNC6 (char*,int) ; 
 int FUNC7 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC9(char *filename) /* {{{ */
{
	int error = 0;
	char *buf = NULL, *newbuf = NULL;
	int bufsize = 0;
	int fd, n;
	int nb_read = 1;
	char c = '*';

	int ret = 1;

	if (!filename || !filename[0]) {
		FUNC8(ZLOG_ERROR, "configuration filename is empty");
		return -1;
	}

	fd = FUNC4(filename, O_RDONLY, 0);
	if (fd < 0) {
		FUNC8(ZLOG_SYSERROR, "failed to open configuration file '%s'", filename);
		return -1;
	}

	if (ini_recursion++ > 4) {
		FUNC8(ZLOG_ERROR, "failed to include more than 5 files recusively");
		FUNC0(fd);
		return -1;
	}

	ini_lineno = 0;
	while (nb_read > 0) {
		int tmp;
		ini_lineno++;
		ini_filename = filename;
		for (n = 0; (nb_read = FUNC5(fd, &c, sizeof(char))) == sizeof(char) && c != '\n'; n++) {
			if (n == bufsize) {
				bufsize += 1024;
				newbuf = (char*) FUNC6(buf, sizeof(char) * (bufsize + 2));
				if (newbuf == NULL) {
					ini_recursion--;
					FUNC0(fd);
					FUNC3(buf);
					return -1;
				}
				buf = newbuf;
			}

			buf[n] = c;
		}
		if (n == 0) {
			continue;
		}
		/* always append newline and null terminate */
		buf[n++] = '\n';
		buf[n] = '\0';
		tmp = FUNC7(buf, 1, ZEND_INI_SCANNER_NORMAL, (zend_ini_parser_cb_t)fpm_conf_ini_parser, &error);
		ini_filename = filename;
		if (error || tmp == FAILURE) {
			if (ini_include) FUNC3(ini_include);
			ini_recursion--;
			FUNC0(fd);
			FUNC3(buf);
			return -1;
		}
		if (ini_include) {
			char *tmp = ini_include;
			ini_include = NULL;
			FUNC2(&tmp, NULL, NULL, 0);
			FUNC1(tmp, &error);
			if (error) {
				FUNC3(tmp);
				ini_recursion--;
				FUNC0(fd);
				FUNC3(buf);
				return -1;
			}
			FUNC3(tmp);
		}
	}
	FUNC3(buf);

	ini_recursion--;
	FUNC0(fd);
	return ret;
}