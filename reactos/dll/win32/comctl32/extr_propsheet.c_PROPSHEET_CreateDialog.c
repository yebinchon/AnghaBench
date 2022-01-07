
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_10__ {int style; } ;
struct TYPE_9__ {int signature; int style; } ;
struct TYPE_7__ {int dwFlags; int hwndParent; int hInstance; int (* pfnCallback ) (int ,int ,int ) ;} ;
struct TYPE_8__ {TYPE_1__ ppshheader; scalar_t__ unicode; scalar_t__ useCallback; } ;
typedef TYPE_2__ PropSheetInfo ;
typedef TYPE_3__ MyDLGTEMPLATEEX ;
typedef int LRESULT ;
typedef int LPWSTR ;
typedef scalar_t__ LPVOID ;
typedef int LPSTR ;
typedef int LPCVOID ;
typedef int LPARAM ;
typedef int INT_PTR ;
typedef int HRSRC ;
typedef int DWORD ;
typedef TYPE_4__ DLGTEMPLATE ;


 scalar_t__ Alloc (int) ;
 int COMCTL32_hModule ;
 scalar_t__ CreateDialogIndirectParamA (int ,scalar_t__,int ,int ,int ) ;
 scalar_t__ CreateDialogIndirectParamW (int ,scalar_t__,int ,int ,int ) ;
 int DS_CONTEXTHELP ;
 int FindResourceA (int ,int ,int ) ;
 int FindResourceW (int ,int ,int ) ;
 int Free (scalar_t__) ;
 int IDD_PROPSHEET ;
 int IDD_WIZARD ;
 int INTRNL_ANY_WIZARD ;
 int LoadResource (int ,int ) ;
 int MAKEINTRESOURCEA (int ) ;
 int MAKEINTRESOURCEW (int ) ;
 int PROPSHEET_DialogProc ;
 int PSCB_PRECREATE ;
 int PSH_NOCONTEXTHELP ;
 int PSH_WIZARDCONTEXTHELP ;
 scalar_t__ RT_DIALOG ;
 int SizeofResource (int ,int ) ;
 int TRACE (char*,TYPE_2__*) ;
 int memcpy (scalar_t__,int ,int) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static INT_PTR PROPSHEET_CreateDialog(PropSheetInfo* psInfo)
{
  LRESULT ret;
  LPCVOID template;
  LPVOID temp = 0;
  HRSRC hRes;
  DWORD resSize;
  WORD resID = IDD_PROPSHEET;

  TRACE("(%p)\n", psInfo);
  if (psInfo->ppshheader.dwFlags & INTRNL_ANY_WIZARD)
    resID = IDD_WIZARD;

  if( psInfo->unicode )
  {
    if(!(hRes = FindResourceW(COMCTL32_hModule,
                            MAKEINTRESOURCEW(resID),
                            (LPWSTR)RT_DIALOG)))
      return -1;
  }
  else
  {
    if(!(hRes = FindResourceA(COMCTL32_hModule,
                            MAKEINTRESOURCEA(resID),
                            (LPSTR)RT_DIALOG)))
      return -1;
  }

  if(!(template = LoadResource(COMCTL32_hModule, hRes)))
    return -1;




  resSize = SizeofResource(COMCTL32_hModule, hRes);

  temp = Alloc(2 * resSize);

  if (!temp)
    return -1;

  memcpy(temp, template, resSize);

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





  if( psInfo->unicode )
  {
    ret = (INT_PTR)CreateDialogIndirectParamW(psInfo->ppshheader.hInstance,
                                          temp, psInfo->ppshheader.hwndParent,
                                          PROPSHEET_DialogProc, (LPARAM)psInfo);
    if ( !ret ) ret = -1;
  }
  else
  {
    ret = (INT_PTR)CreateDialogIndirectParamA(psInfo->ppshheader.hInstance,
                                          temp, psInfo->ppshheader.hwndParent,
                                          PROPSHEET_DialogProc, (LPARAM)psInfo);
    if ( !ret ) ret = -1;
  }

  Free(temp);

  return ret;
}
