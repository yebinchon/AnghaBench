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
typedef  int /*<<< orphan*/  szSize ;
typedef  int WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_6__ {int /*<<< orphan*/  hSelf; int /*<<< orphan*/  hListBox; TYPE_1__* Pagefile; } ;
struct TYPE_5__ {int NewMinSize; int NewMaxSize; int pszVolume; int /*<<< orphan*/  szDrive; scalar_t__ bUsed; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_2__* PVIRTMEM ;
typedef  int LPARAM ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  IDS_PAGEFILE_NONE ; 
 int /*<<< orphan*/  IDS_PAGEFILE_SYSTEM ; 
 int /*<<< orphan*/  LB_ADDSTRING ; 
 int /*<<< orphan*/  LB_SETCURSEL ; 
 int /*<<< orphan*/  LB_SETITEMDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int,...) ; 
 int /*<<< orphan*/  hApplet ; 

__attribute__((used)) static VOID
FUNC5(PVIRTMEM pVirtMem)
{
    TCHAR szDisplayString[256];
    TCHAR szSize[64];
    INT Index;
    INT i;

    for (i = 0; i < 26; i++)
    {
        if (pVirtMem->Pagefile[i].bUsed)
        {
            if ((pVirtMem->Pagefile[i].NewMinSize == -1) &&
                (pVirtMem->Pagefile[i].NewMaxSize == -1))
            {
                FUNC0(hApplet,
                           IDS_PAGEFILE_NONE,
                           szSize,
                           sizeof(szSize) / sizeof(szSize[0]));
            }
            else if ((pVirtMem->Pagefile[i].NewMinSize == 0) &&
                     (pVirtMem->Pagefile[i].NewMaxSize == 0))
            {
                FUNC0(hApplet,
                           IDS_PAGEFILE_SYSTEM,
                           szSize,
                           sizeof(szSize) / sizeof(szSize[0]));
            }
            else
            {
                FUNC4(szSize, FUNC3("%d - %d"),
                          pVirtMem->Pagefile[i].NewMinSize,
                          pVirtMem->Pagefile[i].NewMaxSize);
            }

            FUNC4(szDisplayString,
                      FUNC3("%s  [%s]\t%s"),
                      pVirtMem->Pagefile[i].szDrive,
                      pVirtMem->Pagefile[i].pszVolume ? pVirtMem->Pagefile[i].pszVolume : FUNC3(""),
                      szSize);

            Index = FUNC2(pVirtMem->hListBox, LB_ADDSTRING, (WPARAM)0, (LPARAM)szDisplayString);
            FUNC2(pVirtMem->hListBox, LB_SETITEMDATA, Index, i);
        }
    }

    FUNC2(pVirtMem->hListBox, LB_SETCURSEL, (WPARAM)0, (LPARAM)0);

    FUNC1(pVirtMem->hSelf, pVirtMem);
}