#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  keyCtx; int /*<<< orphan*/  tempCtx; } ;
struct TYPE_6__ {int /*<<< orphan*/  opaque; } ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  TYPE_2__* GinScanOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void
FUNC3(IndexScanDesc scan)
{
	GinScanOpaque so = (GinScanOpaque) scan->opaque;

	FUNC1(so);

	FUNC0(so->tempCtx);
	FUNC0(so->keyCtx);

	FUNC2(so);
}