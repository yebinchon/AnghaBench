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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {scalar_t__ dwSelectedProfileIndex; int dwProfileCount; } ;
typedef  TYPE_1__* PPROFILEDATA ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_HRDPROFCOPY ; 
 int /*<<< orphan*/  IDC_HRDPROFDEL ; 
 int /*<<< orphan*/  IDC_HRDPROFDWN ; 
 int /*<<< orphan*/  IDC_HRDPROFPROP ; 
 int /*<<< orphan*/  IDC_HRDPROFRENAME ; 
 int /*<<< orphan*/  IDC_HRDPROFUP ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static
VOID
FUNC2(
    HWND hwndDlg,
    PPROFILEDATA pProfileData)
{
    FUNC0(FUNC1(hwndDlg, IDC_HRDPROFPROP), (pProfileData->dwSelectedProfileIndex != (DWORD)-1) ? TRUE : FALSE);
    FUNC0(FUNC1(hwndDlg, IDC_HRDPROFCOPY), (pProfileData->dwSelectedProfileIndex != (DWORD)-1) ? TRUE : FALSE);
    FUNC0(FUNC1(hwndDlg, IDC_HRDPROFRENAME), (pProfileData->dwSelectedProfileIndex != (DWORD)-1) ? TRUE : FALSE);
    FUNC0(FUNC1(hwndDlg, IDC_HRDPROFDEL), (pProfileData->dwSelectedProfileIndex != (DWORD)-1) ? TRUE : FALSE);

    if (pProfileData->dwProfileCount < 2)
    {
        FUNC0(FUNC1(hwndDlg, IDC_HRDPROFUP), FALSE);
        FUNC0(FUNC1(hwndDlg, IDC_HRDPROFDWN), FALSE);
    }
    else
    {
        FUNC0(FUNC1(hwndDlg, IDC_HRDPROFUP),
                     (pProfileData->dwSelectedProfileIndex > 0) ? TRUE : FALSE);
        FUNC0(FUNC1(hwndDlg, IDC_HRDPROFDWN),
                     (pProfileData->dwSelectedProfileIndex < pProfileData->dwProfileCount - 1) ? TRUE : FALSE);
    }
}