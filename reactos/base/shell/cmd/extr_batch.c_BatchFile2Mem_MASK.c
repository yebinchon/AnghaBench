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
struct TYPE_2__ {int memsize; char* mem; scalar_t__ mempos; int /*<<< orphan*/  memfree; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_BEGIN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* bc ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(HANDLE hBatchFile)
{
    FUNC3 ("BatchFile2Mem ()\n");

    bc->memsize = FUNC0(hBatchFile, NULL);
    bc->mem     = (char *)FUNC4(bc->memsize+1);		/* 1 extra for '\0' */

    /* if memory is available, read it in and close the file */
    if (bc->mem != NULL)
    {
        FUNC3 ("BatchFile2Mem memory %08x - %08x\n",bc->mem,bc->memsize);
        FUNC2 (hBatchFile, 0, NULL, FILE_BEGIN);
        FUNC1(hBatchFile, (LPVOID)bc->mem, bc->memsize,  &bc->memsize, NULL);
        bc->mem[bc->memsize]='\0';  /* end this, so you can dump it as a string */
        bc->memfree=TRUE;           /* this one needs to be freed */
    }
    else
    {
        bc->memsize=0;              /* this will prevent mem being accessed */
        bc->memfree=FALSE;
    }
    bc->mempos = 0;                 /* set position to the start */
}