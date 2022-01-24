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
struct socket_testcase {int domain; int type; int protocol; int /*<<< orphan*/  expect; scalar_t__ nosupport_ok; } ;

/* Variables and functions */
 int FUNC0 (struct socket_testcase*) ; 
 int /*<<< orphan*/  EAFNOSUPPORT ; 
 int ERR_STRING_SZ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int,char*,...) ; 
 int FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct socket_testcase* tests ; 

__attribute__((used)) static int FUNC5(void)
{
	char err_string1[ERR_STRING_SZ];
	char err_string2[ERR_STRING_SZ];
	int i, err;

	err = 0;
	for (i = 0; i < FUNC0(tests); i++) {
		struct socket_testcase *s = &tests[i];
		int fd;

		fd = FUNC3(s->domain, s->type, s->protocol);
		if (fd < 0) {
			if (s->nosupport_ok &&
			    errno == EAFNOSUPPORT)
				continue;

			if (s->expect < 0 &&
			    errno == -s->expect)
				continue;

			FUNC4(-s->expect, err_string1, ERR_STRING_SZ);
			FUNC4(errno, err_string2, ERR_STRING_SZ);

			FUNC2(stderr, "socket(%d, %d, %d) expected "
				"err (%s) got (%s)\n",
				s->domain, s->type, s->protocol,
				err_string1, err_string2);

			err = -1;
			break;
		} else {
			FUNC1(fd);

			if (s->expect < 0) {
				FUNC4(errno, err_string1, ERR_STRING_SZ);

				FUNC2(stderr, "socket(%d, %d, %d) expected "
					"success got err (%s)\n",
					s->domain, s->type, s->protocol,
					err_string1);

				err = -1;
				break;
			}
		}
	}

	return err;
}