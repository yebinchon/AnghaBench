#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int numberOfKeys; int /*<<< orphan*/  keyData; int /*<<< orphan*/  opaque; } ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  scalar_t__ ScanKey ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  int /*<<< orphan*/  GinScanOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 

void
FUNC2(IndexScanDesc scan, ScanKey scankey, int nscankeys,
		  ScanKey orderbys, int norderbys)
{
	GinScanOpaque so = (GinScanOpaque) scan->opaque;

	FUNC0(so);

	if (scankey && scan->numberOfKeys > 0)
	{
		FUNC1(scan->keyData, scankey,
				scan->numberOfKeys * sizeof(ScanKeyData));
	}
}