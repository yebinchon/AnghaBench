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
#define  FPM_PCTL_STATE_FINISHING 130 
#define  FPM_PCTL_STATE_RELOADING 129 
#define  FPM_PCTL_STATE_TERMINATING 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int fpm_state ; 

__attribute__((used)) static void FUNC2() /* {{{ */
{
	switch (fpm_state) {
		case FPM_PCTL_STATE_RELOADING:
			FUNC0();
			break;

		case FPM_PCTL_STATE_FINISHING:
		case FPM_PCTL_STATE_TERMINATING:
			FUNC1();
			break;
	}
}