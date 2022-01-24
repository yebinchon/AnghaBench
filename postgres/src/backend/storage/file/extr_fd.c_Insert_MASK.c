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
struct TYPE_3__ {size_t lruMoreRecently; size_t lruLessRecently; int /*<<< orphan*/  fileName; } ;
typedef  TYPE_1__ Vfd ;
typedef  size_t File ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG ; 
 TYPE_1__* VfdCache ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(File file)
{
	Vfd		   *vfdP;

	FUNC0(file != 0);

	FUNC1(FUNC3(LOG, "Insert %d (%s)",
			   file, VfdCache[file].fileName));
	FUNC1(FUNC2());

	vfdP = &VfdCache[file];

	vfdP->lruMoreRecently = 0;
	vfdP->lruLessRecently = VfdCache[0].lruLessRecently;
	VfdCache[0].lruLessRecently = file;
	VfdCache[vfdP->lruLessRecently].lruMoreRecently = file;

	FUNC1(FUNC2());
}