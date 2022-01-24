#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int dwSize; int /*<<< orphan*/  pfnDlgProc; int /*<<< orphan*/  pszTemplate; int /*<<< orphan*/  hInstance; int /*<<< orphan*/  dwFlags; } ;
typedef  TYPE_1__ PROPSHEETPAGEW ;
typedef  int /*<<< orphan*/  DLGPROC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PSP_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  hApplet ; 

__attribute__((used)) static VOID
FUNC2(PROPSHEETPAGEW *psp, WORD idDlg, DLGPROC DlgProc)
{
    FUNC1(psp, sizeof(PROPSHEETPAGEW));
    psp->dwSize = sizeof(PROPSHEETPAGEW);
    psp->dwFlags = PSP_DEFAULT;
    psp->hInstance = hApplet;
    psp->pszTemplate = FUNC0(idDlg);
    psp->pfnDlgProc = DlgProc;
}