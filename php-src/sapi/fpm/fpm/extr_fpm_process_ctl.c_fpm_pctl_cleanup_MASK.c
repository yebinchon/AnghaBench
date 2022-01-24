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
 int FPM_CLEANUP_PARENT_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *****) ; 
 int saved_argc ; 
 int /*<<< orphan*/ ***** saved_argv ; 

__attribute__((used)) static void FUNC1(int which, void *arg) /* {{{ */
{
	int i;
	if (which != FPM_CLEANUP_PARENT_EXEC) {
		for (i = 0; i < saved_argc; i++) {
			FUNC0(&saved_argv[i]);
		}
		FUNC0(saved_argv);
	}
}