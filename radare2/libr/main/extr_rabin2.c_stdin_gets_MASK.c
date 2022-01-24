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

/* Variables and functions */
 scalar_t__ STDIN_BUF_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__* stdin_buf ; 
 char* FUNC4 (scalar_t__*) ; 
 int FUNC5 (scalar_t__*) ; 

__attribute__((used)) static char *FUNC6() {
#define STDIN_BUF_SIZE 96096
	if (!stdin_buf) {
		/* XXX: never freed. leaks! */
		stdin_buf = FUNC2 (STDIN_BUF_SIZE);
		if (!stdin_buf) {
			return NULL;
		}
	}
	FUNC3 (stdin_buf, 0, STDIN_BUF_SIZE);
	if (!FUNC1 (stdin_buf, STDIN_BUF_SIZE - 1, stdin)) {
		return NULL;
	}
	if (FUNC0 (stdin)) {
		return NULL;
	}
	stdin_buf[FUNC5 (stdin_buf) - 1] = 0;
	return FUNC4 (stdin_buf);
}