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
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int*) ; 
 int FUNC4 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(int* fds) {
	int retval;

#ifdef HAVE_PIPE2
	retval = pipe2(fds, O_CLOEXEC);
#else
	retval = FUNC3(fds);
	if(retval == 0) {
		FUNC1(fds[0], F_SETFD, FD_CLOEXEC);
		FUNC1(fds[1], F_SETFD, FD_CLOEXEC);
	}
#endif
	if(retval == -1) {
		FUNC2("pipe");
		FUNC0(1);
	}
}