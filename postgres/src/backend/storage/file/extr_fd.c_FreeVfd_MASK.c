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
struct TYPE_3__ {char* fileName; int fdstate; size_t nextFree; } ;
typedef  TYPE_1__ Vfd ;
typedef  size_t File ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG ; 
 TYPE_1__* VfdCache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(File file)
{
	Vfd		   *vfdP = &VfdCache[file];

	FUNC0(FUNC1(LOG, "FreeVfd: %d (%s)",
			   file, vfdP->fileName ? vfdP->fileName : ""));

	if (vfdP->fileName != NULL)
	{
		FUNC2(vfdP->fileName);
		vfdP->fileName = NULL;
	}
	vfdP->fdstate = 0x0;

	vfdP->nextFree = VfdCache[0].nextFree;
	VfdCache[0].nextFree = file;
}