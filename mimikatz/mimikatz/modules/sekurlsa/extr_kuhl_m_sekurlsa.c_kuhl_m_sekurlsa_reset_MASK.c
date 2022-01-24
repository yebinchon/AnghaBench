#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  size_t ULONG ;
struct TYPE_12__ {TYPE_4__* hLsassMem; } ;
struct TYPE_11__ {int type; TYPE_1__* pHandleProcessDmp; TYPE_2__* pHandleProcess; } ;
struct TYPE_10__ {int /*<<< orphan*/  Module; } ;
struct TYPE_9__ {int /*<<< orphan*/  hProcess; } ;
struct TYPE_8__ {int /*<<< orphan*/  hMinidump; } ;
typedef  int /*<<< orphan*/  KUHL_M_SEKURLSA_LIB ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 size_t FUNC0 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  KULL_M_MEMORY_TYPE_PROCESS 129 
#define  KULL_M_MEMORY_TYPE_PROCESS_DMP 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_6__ cLsass ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_4__* FUNC5 (TYPE_4__*) ; 
 TYPE_3__** lsassPackages ; 
 int /*<<< orphan*/ * pMinidumpName ; 

VOID FUNC6()
{
	HANDLE toClose;
	ULONG i;
	
	if(pMinidumpName)
	{
		FUNC3(pMinidumpName);
		pMinidumpName = NULL;
	}

	if(cLsass.hLsassMem)
	{
		switch(cLsass.hLsassMem->type)
		{
		case KULL_M_MEMORY_TYPE_PROCESS:
			toClose = cLsass.hLsassMem->pHandleProcess->hProcess;
			break;
		case KULL_M_MEMORY_TYPE_PROCESS_DMP:
			toClose = cLsass.hLsassMem->pHandleProcessDmp->hMinidump;
			break;
		default:
			;
		}
		cLsass.hLsassMem = FUNC5(cLsass.hLsassMem);
		FUNC1(toClose);
		FUNC4();
	}
	for(i = 0; i < FUNC0(lsassPackages); i++)
		FUNC2(&lsassPackages[i]->Module, sizeof(KUHL_M_SEKURLSA_LIB));
}