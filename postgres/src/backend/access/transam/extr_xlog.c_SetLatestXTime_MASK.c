#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_2__ {int /*<<< orphan*/  info_lck; int /*<<< orphan*/  recoveryLastXTime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* XLogCtl ; 

__attribute__((used)) static void
FUNC2(TimestampTz xtime)
{
	FUNC0(&XLogCtl->info_lck);
	XLogCtl->recoveryLastXTime = xtime;
	FUNC1(&XLogCtl->info_lck);
}