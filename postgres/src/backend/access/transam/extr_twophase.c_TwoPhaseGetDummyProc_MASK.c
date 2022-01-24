#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_5__ {int /*<<< orphan*/ * allProcs; } ;
struct TYPE_4__ {size_t pgprocno; } ;
typedef  int /*<<< orphan*/  PGPROC ;
typedef  TYPE_1__* GlobalTransaction ;

/* Variables and functions */
 TYPE_3__* ProcGlobal ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int) ; 

PGPROC *
FUNC1(TransactionId xid, bool lock_held)
{
	GlobalTransaction gxact = FUNC0(xid, lock_held);

	return &ProcGlobal->allProcs[gxact->pgprocno];
}