#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  bo_bdesc; int /*<<< orphan*/  bo_rmAccess; } ;
struct TYPE_5__ {scalar_t__ opaque; } ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  TYPE_2__ BrinOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void
FUNC3(IndexScanDesc scan)
{
	BrinOpaque *opaque = (BrinOpaque *) scan->opaque;

	FUNC0(opaque->bo_rmAccess);
	FUNC1(opaque->bo_bdesc);
	FUNC2(opaque);
}