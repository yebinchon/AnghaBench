#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szSize ;
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_5__ {int /*<<< orphan*/  hListBox; TYPE_1__* Pagefile; } ;
struct TYPE_4__ {int NewMinSize; int NewMaxSize; char* pszVolume; int /*<<< orphan*/  szDrive; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_2__* PVIRTMEM ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  size_t INT ;

/* Variables and functions */
 int /*<<< orphan*/  IDS_PAGEFILE_NONE ; 
 int /*<<< orphan*/  IDS_PAGEFILE_SYSTEM ; 
 int /*<<< orphan*/  LB_DELETESTRING ; 
 int /*<<< orphan*/  LB_INSERTSTRING ; 
 int /*<<< orphan*/  LB_SETCURSEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  hApplet ; 

__attribute__((used)) static VOID
FUNC4(PVIRTMEM pVirtMem,
                    INT ListIndex,
                    INT DriveIndex)
{
    TCHAR szDisplayString[256];
    TCHAR szSize[64];

    if ((pVirtMem->Pagefile[DriveIndex].NewMinSize == -1) &&
        (pVirtMem->Pagefile[DriveIndex].NewMaxSize == -1))
    {
        FUNC0(hApplet,
                   IDS_PAGEFILE_NONE,
                   szSize,
                   sizeof(szSize) / sizeof(szSize[0]));
    }
    else if ((pVirtMem->Pagefile[DriveIndex].NewMinSize == 0) &&
             (pVirtMem->Pagefile[DriveIndex].NewMaxSize == 0))
    {
        FUNC0(hApplet,
                   IDS_PAGEFILE_SYSTEM,
                   szSize,
                   sizeof(szSize) / sizeof(szSize[0]));
    }
    else
    {
        FUNC3(szSize,
                  FUNC2("%d - %d"),
                  pVirtMem->Pagefile[DriveIndex].NewMinSize,
                  pVirtMem->Pagefile[DriveIndex].NewMaxSize);
    }

    FUNC3(szDisplayString,
              FUNC2("%s  [%s]\t%s"),
              pVirtMem->Pagefile[DriveIndex].szDrive,
              pVirtMem->Pagefile[DriveIndex].pszVolume ? pVirtMem->Pagefile[DriveIndex].pszVolume : L"",
              szSize);

    FUNC1(pVirtMem->hListBox, LB_DELETESTRING, (WPARAM)ListIndex, 0);
    FUNC1(pVirtMem->hListBox, LB_INSERTSTRING, (WPARAM)ListIndex, (LPARAM)szDisplayString);
    FUNC1(pVirtMem->hListBox, LB_SETCURSEL, (WPARAM)ListIndex, 0);
}