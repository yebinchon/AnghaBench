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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void *p, uint8_t *buf, const uint64_t count, const int timeout) {
	int result;
	fd_set readset;
	int fd = (int) (size_t) p;
	for (;;) {
		FUNC2 (&readset);
		FUNC1 (fd, &readset);
		result = FUNC4 (fd + 1, &readset, NULL, NULL, NULL);
		if (result < 1) {
			if (errno == EINTR) continue;
			return -1;
		}
		if (FUNC0 (fd, &readset)) {
			return  FUNC3 ((int) (size_t) p, buf, count, 0);
		}
	}
	return EINTR;
}