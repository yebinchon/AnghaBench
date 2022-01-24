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
 int /*<<< orphan*/  MSG_MORE ; 
 int /*<<< orphan*/  TIMEOUT ; 
 int /*<<< orphan*/  control_fd ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(const char *str)
{
	ssize_t len = FUNC3(str);
	ssize_t ret;

	FUNC4(TIMEOUT);

	do {
		ret = FUNC2(control_fd, str, len, MSG_MORE);
		FUNC5("send");
	} while (ret < 0 && errno == EINTR);

	if (ret != len) {
		FUNC1("send");
		FUNC0(EXIT_FAILURE);
	}

	do {
		ret = FUNC2(control_fd, "\n", 1, 0);
		FUNC5("send");
	} while (ret < 0 && errno == EINTR);

	if (ret != 1) {
		FUNC1("send");
		FUNC0(EXIT_FAILURE);
	}

	FUNC6();
}