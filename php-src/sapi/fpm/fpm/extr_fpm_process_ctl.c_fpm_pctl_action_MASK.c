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
struct fpm_event_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPM_PCTL_ACTION_TIMEOUT ; 
 int /*<<< orphan*/  FPM_PCTL_STATE_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct fpm_event_s *ev, short which, void *arg) /* {{{ */
{
	FUNC0(FPM_PCTL_STATE_UNSPECIFIED, FPM_PCTL_ACTION_TIMEOUT);
}