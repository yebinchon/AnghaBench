#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_3__ {int /*<<< orphan*/  Write; } ;
struct TYPE_4__ {int /*<<< orphan*/  info_lck; TYPE_1__ LogwrtRqst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* XLogCtl ; 

XLogRecPtr
FUNC2(void)
{
	XLogRecPtr	recptr;

	FUNC0(&XLogCtl->info_lck);
	recptr = XLogCtl->LogwrtRqst.Write;
	FUNC1(&XLogCtl->info_lck);

	return recptr;
}