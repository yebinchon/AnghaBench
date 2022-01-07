
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_13__ {int dmCopies; scalar_t__ dmOrientation; } ;
struct TYPE_14__ {TYPE_1__ s1; } ;
struct TYPE_17__ {int dmFields; int pPortName; int * pPrinterName; TYPE_2__ u1; int dmDeviceName; } ;
struct TYPE_16__ {scalar_t__ hDevMode; int Flags; int nFromPage; int nToPage; int nCopies; } ;
struct TYPE_15__ {scalar_t__ hLandscapeIcon; scalar_t__ hPortraitIcon; TYPE_5__* lpPrinterInfo; scalar_t__ hNoCollateIcon; scalar_t__ hCollateIcon; TYPE_5__* lpDevMode; TYPE_5__* lpDriverInfo; TYPE_4__* lpPrintDlg; } ;
typedef TYPE_3__ PRINT_PTRW ;
typedef TYPE_4__* LPPRINTDLGW ;
typedef TYPE_5__* LPDEVMODEW ;
typedef int * LPBYTE ;
typedef int LPARAM ;
typedef int LONG ;
typedef int INT ;
typedef int HWND ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CheckDlgButton (int ,int ,int) ;
 int CheckRadioButton (int ,int ,int ,int ) ;
 int ClosePrinter (int ) ;
 scalar_t__ DMORIENT_PORTRAIT ;
 int DM_COLLATE ;
 int DM_COPIES ;
 int DM_IN_BUFFER ;
 int DM_OUT_BUFFER ;
 int DocumentPropertiesW (int ,int ,int *,TYPE_5__*,TYPE_5__*,int) ;
 int ERR (char*,int ) ;
 int EnableWindow (int ,int) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int GetPrinterDriverW (int ,int *,int,int *,int,int*) ;
 int GetPrinterW (int ,int,int *,int,int*) ;
 int GetProcessHeap () ;
 TYPE_5__* GlobalLock (scalar_t__) ;
 int GlobalUnlock (scalar_t__) ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_5__*) ;
 int IMAGE_ICON ;
 int MAX_COPIES ;
 int OpenPrinterW (int *,int *,int *) ;
 int PD_COLLATE ;
 int PD_DISABLEPRINTTOFILE ;
 int PD_HIDEPRINTTOFILE ;
 int PD_NOPAGENUMS ;
 int PD_NOSELECTION ;
 int PD_PAGENUMS ;
 int PD_PRINTSETUP ;
 int PD_PRINTTOFILE ;
 int PD_SELECTION ;
 int PD_SHOWHELP ;
 int PD_USEDEVMODECOPIESANDCOLLATE ;
 int PRINTDLG_SetUpPaperComboBoxW (int ,int ,int *,int ,TYPE_5__*) ;
 int PRINTDLG_UpdatePrinterInfoTextsW (int ,TYPE_5__*) ;
 int STM_SETIMAGE ;
 int SW_HIDE ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int SetDlgItemInt (int ,int ,int,int) ;
 int ShowWindow (int ,int ) ;
 int TRUE ;
 int chx1 ;
 int chx2 ;
 int cmb2 ;
 int cmb3 ;
 int debugstr_w (int *) ;
 int edt1 ;
 int edt2 ;
 int edt3 ;
 int ico1 ;
 int ico3 ;
 int lstrcmpW (int ,int ) ;
 int pshHelp ;
 int rad1 ;
 int rad2 ;
 int rad3 ;
 int stc2 ;
 int stc3 ;
 int stc5 ;

__attribute__((used)) static BOOL PRINTDLG_ChangePrinterW(HWND hDlg, WCHAR *name,
       PRINT_PTRW *PrintStructures)
{
    LPPRINTDLGW lppd = PrintStructures->lpPrintDlg;
    LPDEVMODEW lpdm = ((void*)0);
    LONG dmSize;
    DWORD needed;
    HANDLE hprn;

    HeapFree(GetProcessHeap(),0, PrintStructures->lpPrinterInfo);
    HeapFree(GetProcessHeap(),0, PrintStructures->lpDriverInfo);
    if(!OpenPrinterW(name, &hprn, ((void*)0))) {
        ERR("Can't open printer %s\n", debugstr_w(name));
 return FALSE;
    }
    GetPrinterW(hprn, 2, ((void*)0), 0, &needed);
    PrintStructures->lpPrinterInfo = HeapAlloc(GetProcessHeap(),0,needed);
    GetPrinterW(hprn, 2, (LPBYTE)PrintStructures->lpPrinterInfo, needed,
  &needed);
    GetPrinterDriverW(hprn, ((void*)0), 3, ((void*)0), 0, &needed);
    PrintStructures->lpDriverInfo = HeapAlloc(GetProcessHeap(),0,needed);
    if (!GetPrinterDriverW(hprn, ((void*)0), 3, (LPBYTE)PrintStructures->lpDriverInfo,
     needed, &needed)) {
 ERR("GetPrinterDriverA failed for %s, fix your config!\n",debugstr_w(PrintStructures->lpPrinterInfo->pPrinterName));
 return FALSE;
    }
    ClosePrinter(hprn);

    PRINTDLG_UpdatePrinterInfoTextsW(hDlg, PrintStructures->lpPrinterInfo);

    HeapFree(GetProcessHeap(), 0, PrintStructures->lpDevMode);
    PrintStructures->lpDevMode = ((void*)0);

    dmSize = DocumentPropertiesW(0, 0, name, ((void*)0), ((void*)0), 0);
    if(dmSize == -1) {
        ERR("DocumentProperties fails on %s\n", debugstr_w(name));
 return FALSE;
    }
    PrintStructures->lpDevMode = HeapAlloc(GetProcessHeap(), 0, dmSize);
    dmSize = DocumentPropertiesW(0, 0, name, PrintStructures->lpDevMode, ((void*)0),
     DM_OUT_BUFFER);
    if(lppd->hDevMode && (lpdm = GlobalLock(lppd->hDevMode)) &&
     !lstrcmpW(lpdm->dmDeviceName,
      PrintStructures->lpDevMode->dmDeviceName)) {

        DocumentPropertiesW(0, 0, name, PrintStructures->lpDevMode, lpdm,
       DM_OUT_BUFFER | DM_IN_BUFFER);
    }
    if(lpdm)
        GlobalUnlock(lppd->hDevMode);

    lpdm = PrintStructures->lpDevMode;

    if(!(lppd->Flags & PD_PRINTSETUP)) {

 if(lppd->nFromPage != 0xffff)
     SetDlgItemInt(hDlg, edt1, lppd->nFromPage, FALSE);
 if(lppd->nToPage != 0xffff)
     SetDlgItemInt(hDlg, edt2, lppd->nToPage, FALSE);

 CheckRadioButton(hDlg, rad1, rad3, rad1);
 if (lppd->Flags & PD_NOSELECTION)
     EnableWindow(GetDlgItem(hDlg, rad2), FALSE);
 else
     if (lppd->Flags & PD_SELECTION)
         CheckRadioButton(hDlg, rad1, rad3, rad2);
 if (lppd->Flags & PD_NOPAGENUMS) {
     EnableWindow(GetDlgItem(hDlg, rad3), FALSE);
     EnableWindow(GetDlgItem(hDlg, stc2),FALSE);
     EnableWindow(GetDlgItem(hDlg, edt1), FALSE);
     EnableWindow(GetDlgItem(hDlg, stc3),FALSE);
     EnableWindow(GetDlgItem(hDlg, edt2), FALSE);
 } else {
     if (lppd->Flags & PD_PAGENUMS)
         CheckRadioButton(hDlg, rad1, rad3, rad3);
 }





 if (lppd->Flags & PD_COLLATE) {
            SendDlgItemMessageW(hDlg, ico3, STM_SETIMAGE, IMAGE_ICON,
    (LPARAM)PrintStructures->hCollateIcon);
     CheckDlgButton(hDlg, chx2, 1);
 } else {
            SendDlgItemMessageW(hDlg, ico3, STM_SETIMAGE, IMAGE_ICON,
    (LPARAM)PrintStructures->hNoCollateIcon);
     CheckDlgButton(hDlg, chx2, 0);
 }

 if (lppd->Flags & PD_USEDEVMODECOPIESANDCOLLATE) {

     if (!(lpdm->dmFields & DM_COLLATE)) {
         EnableWindow(GetDlgItem(hDlg, chx2), FALSE);
  EnableWindow(GetDlgItem(hDlg, ico3), FALSE);
     }
 }


 {
   INT copies;
   if (lppd->hDevMode == 0)
       copies = lppd->nCopies;
   else
       copies = lpdm->u1.s1.dmCopies;
   if(copies == 0) copies = 1;
   else if(copies < 0) copies = MAX_COPIES;
   SetDlgItemInt(hDlg, edt3, copies, FALSE);
 }

 if (lppd->Flags & PD_USEDEVMODECOPIESANDCOLLATE) {

     if (!(lpdm->dmFields & DM_COPIES)) {
         EnableWindow(GetDlgItem(hDlg, edt3), FALSE);
  EnableWindow(GetDlgItem(hDlg, stc5), FALSE);
     }
 }


 CheckDlgButton(hDlg, chx1, (lppd->Flags & PD_PRINTTOFILE) ? 1 : 0);
 if (lppd->Flags & PD_DISABLEPRINTTOFILE)
            EnableWindow(GetDlgItem(hDlg, chx1), FALSE);
 if (lppd->Flags & PD_HIDEPRINTTOFILE)
            ShowWindow(GetDlgItem(hDlg, chx1), SW_HIDE);

    } else {
      BOOL bPortrait = (lpdm->u1.s1.dmOrientation == DMORIENT_PORTRAIT);

      PRINTDLG_SetUpPaperComboBoxW(hDlg, cmb2,
      PrintStructures->lpPrinterInfo->pPrinterName,
      PrintStructures->lpPrinterInfo->pPortName,
      lpdm);
      PRINTDLG_SetUpPaperComboBoxW(hDlg, cmb3,
      PrintStructures->lpPrinterInfo->pPrinterName,
      PrintStructures->lpPrinterInfo->pPortName,
      lpdm);
      CheckRadioButton(hDlg, rad1, rad2, bPortrait ? rad1: rad2);
      SendDlgItemMessageW(hDlg, ico1, STM_SETIMAGE, IMAGE_ICON,
                          (LPARAM)(bPortrait ? PrintStructures->hPortraitIcon :
                                   PrintStructures->hLandscapeIcon));

    }


    if ((lppd->Flags & PD_SHOWHELP)==0) {

        ShowWindow(GetDlgItem(hDlg, pshHelp), SW_HIDE);
    }
    return TRUE;
}
