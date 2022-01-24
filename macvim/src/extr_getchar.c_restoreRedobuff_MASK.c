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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  old_redobuff ; 
 int /*<<< orphan*/  redobuff ; 
 scalar_t__ save_level ; 
 int /*<<< orphan*/  save_old_redobuff ; 
 int /*<<< orphan*/  save_redobuff ; 

void
FUNC1()
{
    if (--save_level == 0)
    {
	FUNC0(&redobuff);
	redobuff = save_redobuff;
	FUNC0(&old_redobuff);
	old_redobuff = save_old_redobuff;
    }
}