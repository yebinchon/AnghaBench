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
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  TIMEOUT ; 
 int /*<<< orphan*/  control_fd ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

char *FUNC8(void)
{
	char *buf = NULL;
	size_t idx = 0;
	size_t buflen = 0;

	FUNC5(TIMEOUT);

	for (;;) {
		ssize_t ret;

		if (idx >= buflen) {
			char *new_buf;

			new_buf = FUNC3(buf, buflen + 80);
			if (!new_buf) {
				FUNC2("realloc");
				FUNC0(EXIT_FAILURE);
			}

			buf = new_buf;
			buflen += 80;
		}

		do {
			ret = FUNC4(control_fd, &buf[idx], 1, 0);
			FUNC6("recv");
		} while (ret < 0 && errno == EINTR);

		if (ret == 0) {
			FUNC1(stderr, "unexpected EOF on control socket\n");
			FUNC0(EXIT_FAILURE);
		}

		if (ret != 1) {
			FUNC2("recv");
			FUNC0(EXIT_FAILURE);
		}

		if (buf[idx] == '\n') {
			buf[idx] = '\0';
			break;
		}

		idx++;
	}

	FUNC7();

	return buf;
}