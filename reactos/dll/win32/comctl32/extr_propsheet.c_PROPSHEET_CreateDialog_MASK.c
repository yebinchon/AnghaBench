#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_10__ {int /*<<< orphan*/  style; } ;
struct TYPE_9__ {int signature; int /*<<< orphan*/  style; } ;
struct TYPE_7__ {int dwFlags; int /*<<< orphan*/  hwndParent; int /*<<< orphan*/  hInstance; int /*<<< orphan*/  (* pfnCallback ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {TYPE_1__ ppshheader; scalar_t__ unicode; scalar_t__ useCallback; } ;
typedef  TYPE_2__ PropSheetInfo ;
typedef  TYPE_3__ MyDLGTEMPLATEEX ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ LPVOID ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  LPCVOID ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int INT_PTR ;
typedef  int /*<<< orphan*/  HRSRC ;
typedef  int DWORD ;
typedef  TYPE_4__ DLGTEMPLATE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  COMCTL32_hModule ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DS_CONTEXTHELP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  IDD_PROPSHEET ; 
 int /*<<< orphan*/  IDD_WIZARD ; 
 int INTRNL_ANY_WIZARD ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROPSHEET_DialogProc ; 
 int /*<<< orphan*/  PSCB_PRECREATE ; 
 int PSH_NOCONTEXTHELP ; 
 int PSH_WIZARDCONTEXTHELP ; 
 scalar_t__ RT_DIALOG ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static INT_PTR FUNC13(PropSheetInfo* psInfo)
{
  LRESULT ret;
  LPCVOID template;
  LPVOID temp = 0;
  HRSRC hRes;
  DWORD resSize;
  WORD resID = IDD_PROPSHEET;

  FUNC10("(%p)\n", psInfo);
  if (psInfo->ppshheader.dwFlags & INTRNL_ANY_WIZARD)
    resID = IDD_WIZARD;

  if( psInfo->unicode )
  {
    if(!(hRes = FUNC4(COMCTL32_hModule,
                            FUNC8(resID),
                            (LPWSTR)RT_DIALOG)))
      return -1;
  }
  else
  {
    if(!(hRes = FUNC3(COMCTL32_hModule,
                            FUNC7(resID),
                            (LPSTR)RT_DIALOG)))
      return -1;
  }

  if(!(template = FUNC6(COMCTL32_hModule, hRes)))
    return -1;

  /*
   * Make a copy of the dialog template.
   */
  resSize = FUNC9(COMCTL32_hModule, hRes);

  temp = FUNC0(2 * resSize);

  if (!temp)
    return -1;

  FUNC11(temp, template, resSize);

  if (psInfo->ppshheader.dwFlags & PSH_NOCONTEXTHELP)
  {
    if (((MyDLGTEMPLATEEX*)temp)->signature == 0xFFFF)
      ((MyDLGTEMPLATEEX*)temp)->style &= ~DS_CONTEXTHELP;
    else
      ((DLGTEMPLATE*)temp)->style &= ~DS_CONTEXTHELP;
  }
  if ((psInfo->ppshheader.dwFlags & INTRNL_ANY_WIZARD) &&
      (psInfo->ppshheader.dwFlags & PSH_WIZARDCONTEXTHELP))
  {
    if (((MyDLGTEMPLATEEX*)temp)->signature == 0xFFFF)
      ((MyDLGTEMPLATEEX*)temp)->style |= DS_CONTEXTHELP;
    else
      ((DLGTEMPLATE*)temp)->style |= DS_CONTEXTHELP;
  }

  if (psInfo->useCallback)
    (*(psInfo->ppshheader.pfnCallback))(0, PSCB_PRECREATE, (LPARAM)temp);

  /* NOTE: MSDN states "Returns a positive value if successful, or -1
   * otherwise for modal property sheets.", but this is wrong. The
   * actual return value is either TRUE (success), FALSE (cancel) or
   * -1 (error). */
  if( psInfo->unicode )
  {
    ret = (INT_PTR)FUNC2(psInfo->ppshheader.hInstance,
                                          temp, psInfo->ppshheader.hwndParent,
                                          PROPSHEET_DialogProc, (LPARAM)psInfo);
    if ( !ret ) ret = -1;
  }
  else
  {
    ret = (INT_PTR)FUNC1(psInfo->ppshheader.hInstance,
                                          temp, psInfo->ppshheader.hwndParent,
                                          PROPSHEET_DialogProc, (LPARAM)psInfo);
    if ( !ret ) ret = -1;
  }

  FUNC5(temp);

  return ret;
}