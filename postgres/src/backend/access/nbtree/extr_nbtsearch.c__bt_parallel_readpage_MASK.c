#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  currPos; } ;
struct TYPE_7__ {int /*<<< orphan*/  opaque; } ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  TYPE_2__* BTScanOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(IndexScanDesc scan, BlockNumber blkno, ScanDirection dir)
{
	BTScanOpaque so = (BTScanOpaque) scan->opaque;

	FUNC1(so, dir);

	if (!FUNC2(scan, blkno, dir))
		return false;

	/* Drop the lock, and maybe the pin, on the current page */
	FUNC0(scan, &so->currPos);

	return true;
}