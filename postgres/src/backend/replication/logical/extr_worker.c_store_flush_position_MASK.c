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
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_2__ {int /*<<< orphan*/  node; int /*<<< orphan*/  remote_end; int /*<<< orphan*/  local_end; } ;
typedef  TYPE_1__ FlushPosition ;

/* Variables and functions */
 int /*<<< orphan*/  ApplyContext ; 
 int /*<<< orphan*/  ApplyMessageContext ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XactLastCommitEnd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lsn_mapping ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(XLogRecPtr remote_lsn)
{
	FlushPosition *flushpos;

	/* Need to do this in permanent context */
	FUNC0(ApplyContext);

	/* Track commit lsn  */
	flushpos = (FlushPosition *) FUNC2(sizeof(FlushPosition));
	flushpos->local_end = XactLastCommitEnd;
	flushpos->remote_end = remote_lsn;

	FUNC1(&lsn_mapping, &flushpos->node);
	FUNC0(ApplyMessageContext);
}