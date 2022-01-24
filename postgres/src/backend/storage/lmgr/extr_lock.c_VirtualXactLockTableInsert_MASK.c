#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ backendId; scalar_t__ localTransactionId; } ;
typedef  TYPE_1__ VirtualTransactionId ;
struct TYPE_6__ {scalar_t__ backendId; scalar_t__ fpLocalTransactionId; int fpVXIDLock; int /*<<< orphan*/  backendLock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ InvalidLocalTransactionId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_4__* MyProc ; 
 int FUNC3 (TYPE_1__) ; 

void
FUNC4(VirtualTransactionId vxid)
{
	FUNC0(FUNC3(vxid));

	FUNC1(&MyProc->backendLock, LW_EXCLUSIVE);

	FUNC0(MyProc->backendId == vxid.backendId);
	FUNC0(MyProc->fpLocalTransactionId == InvalidLocalTransactionId);
	FUNC0(MyProc->fpVXIDLock == false);

	MyProc->fpVXIDLock = true;
	MyProc->fpLocalTransactionId = vxid.localTransactionId;

	FUNC2(&MyProc->backendLock);
}