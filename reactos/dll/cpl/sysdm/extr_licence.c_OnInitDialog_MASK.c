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
struct TYPE_3__ {scalar_t__ hIcon; } ;
typedef  TYPE_1__* PLIC_CONTEXT ;
typedef  int /*<<< orphan*/  PCSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HRSRC ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  EM_SETSEL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICON_SMALL ; 
 int /*<<< orphan*/  IDC_LICENCEEDIT ; 
 int /*<<< orphan*/  IDI_CPLSYSTEM ; 
 int /*<<< orphan*/  IMAGE_ICON ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RC_LICENSE ; 
 int /*<<< orphan*/  RTDATA ; 
 int SB_TOP ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_SETICON ; 
 int /*<<< orphan*/  WM_VSCROLL ; 
 int /*<<< orphan*/  hApplet ; 

__attribute__((used)) static BOOL
FUNC10(HWND hDlg, PLIC_CONTEXT pLicInfo)
{
    HRSRC hResInfo;
    HGLOBAL hResMem;
    PCSTR LicenseText;

    pLicInfo->hIcon = FUNC2(hApplet,
                                FUNC5(IDI_CPLSYSTEM),
                                IMAGE_ICON,
                                16,
                                16,
                                0);

    FUNC7(hDlg,
                WM_SETICON,
                ICON_SMALL,
                (LPARAM)pLicInfo->hIcon);

    /* Load license from resource */
    if (!(hResInfo = FUNC0(hApplet,
                                  FUNC5(RC_LICENSE),
                                  FUNC5(RTDATA))) ||
        !(hResMem = FUNC3(hApplet, hResInfo)) ||
        !(LicenseText = FUNC4(hResMem)))
    {
        FUNC9(hDlg);
        return FALSE;
    }

    /* Insert the license into the edit control */
    FUNC8(hDlg,
                    IDC_LICENCEEDIT,
                    LicenseText);

    FUNC6(FUNC1(hDlg, IDC_LICENCEEDIT),
                EM_SETSEL,
                -1,
                0);
    FUNC6(FUNC1(hDlg, IDC_LICENCEEDIT), WM_VSCROLL, SB_TOP, 0);
    return TRUE;
}