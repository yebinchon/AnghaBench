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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fpm_pctl_action ; 
 int /*<<< orphan*/  pctl_event ; 

__attribute__((used)) static int FUNC2(int sec) /* {{{ */
{
	FUNC1(&pctl_event, 0, &fpm_pctl_action, NULL);
	FUNC0(&pctl_event, sec * 1000);
	return 0;
}