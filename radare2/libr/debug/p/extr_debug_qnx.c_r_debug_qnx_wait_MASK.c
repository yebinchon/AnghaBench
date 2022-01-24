#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptid_t ;
struct TYPE_8__ {int notify_type; int /*<<< orphan*/  signal; } ;
struct TYPE_6__ {int /*<<< orphan*/  signum; } ;
struct TYPE_7__ {TYPE_1__ reason; } ;
typedef  TYPE_2__ RDebug ;

/* Variables and functions */
 TYPE_4__* desc ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC2 (RDebug *dbg, int pid) {
	ptid_t ptid = FUNC1 (desc, pid);
	if (!FUNC0 (ptid, null_ptid)) {
		dbg->reason.signum = desc->signal;
		return desc->notify_type;
	}
	return 0;
}