
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_10__ {int * dmDeviceName; } ;
struct TYPE_9__ {int wDeviceOffset; } ;
struct TYPE_8__ {int Flags; scalar_t__ nMaxPage; scalar_t__ nMinPage; scalar_t__ nToPage; scalar_t__ nFromPage; int hDevNames; int hDevMode; } ;
struct TYPE_7__ {scalar_t__ hCollateIcon; scalar_t__ hNoCollateIcon; scalar_t__ hPortraitIcon; scalar_t__ hLandscapeIcon; int hwndUpDown; scalar_t__ HelpMessageID; TYPE_2__* lpPrintDlg; } ;
typedef TYPE_1__ PRINT_PTRW ;
typedef int LRESULT ;
typedef TYPE_2__* LPPRINTDLGW ;
typedef int LPARAM ;
typedef int HWND ;
typedef int DWORD ;
typedef TYPE_3__ DEVNAMES ;
typedef TYPE_4__ DEVMODEW ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (int *) ;
 int CDERR_LOADRESFAILURE ;
 int CDERR_REGISTERMSGFAIL ;
 int COMDLG32_SetCommDlgExtendedError (int ) ;
 int COMDLG32_hInstance ;
 int CreateUpDownControl (int,int ,int ,int ,int ,int ,int ,int ,scalar_t__,int ,int,int) ;
 int ERR (char*) ;
 int EndDialog (int ,int ) ;
 int FALSE ;
 int FIXME (char*) ;
 scalar_t__ GetDefaultPrinterW (int *,int *) ;
 scalar_t__ GetDlgItem (int ,int ) ;
 scalar_t__ GetDlgItemTextW (int ,int ,int *,int) ;
 int GetProcessHeap () ;
 void* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int HELPMSGSTRINGW ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int IMAGE_ICON ;
 void* LoadIconW (int ,int ) ;
 void* LoadImageW (int ,int ,int ,int ,int ,int ) ;
 int MAX_COPIES ;
 int PD_NOPAGENUMS ;
 int PD_PRINTSETUP ;
 int PD_SHOWHELP ;
 int PRINTDLG_ChangePrinterW (int ,int *,TYPE_1__*) ;
 int PRINTDLG_SetUpPrinterListComboW (int ,int ,int *) ;
 scalar_t__ RegisterWindowMessageW (int ) ;
 int STM_SETIMAGE ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int TRUE ;
 int UDS_ALIGNRIGHT ;
 int UDS_ARROWKEYS ;
 int UDS_NOTHOUSANDS ;
 int UDS_SETBUDDYINT ;
 int UPDOWN_ID ;
 int WS_BORDER ;
 int WS_CHILD ;
 int WS_VISIBLE ;
 int cmb1 ;
 int cmb4 ;
 int edt3 ;
 int ico3 ;
 int pd32_collateW ;
 int pd32_landscapeW ;
 int pd32_nocollateW ;
 int pd32_portraitW ;

__attribute__((used)) static LRESULT PRINTDLG_WMInitDialogW(HWND hDlg,
         PRINT_PTRW* PrintStructures)
{
    LPPRINTDLGW lppd = PrintStructures->lpPrintDlg;
    DEVNAMES *pdn;
    DEVMODEW *pdm;
    WCHAR *name = ((void*)0);
    UINT comboID = (lppd->Flags & PD_PRINTSETUP) ? cmb1 : cmb4;




    PrintStructures->hCollateIcon =
      LoadImageW(COMDLG32_hInstance, pd32_collateW, IMAGE_ICON, 0, 0, 0);
    PrintStructures->hNoCollateIcon =
      LoadImageW(COMDLG32_hInstance, pd32_nocollateW, IMAGE_ICON, 0, 0, 0);


    PrintStructures->hPortraitIcon =
      LoadIconW(COMDLG32_hInstance, pd32_portraitW);
    PrintStructures->hLandscapeIcon =
      LoadIconW(COMDLG32_hInstance, pd32_landscapeW);


    SendDlgItemMessageW(hDlg, ico3, STM_SETIMAGE, IMAGE_ICON,
                        (LPARAM)PrintStructures->hNoCollateIcon);

    if(PrintStructures->hCollateIcon == 0 ||
       PrintStructures->hNoCollateIcon == 0 ||
       PrintStructures->hPortraitIcon == 0 ||
       PrintStructures->hLandscapeIcon == 0) {
        ERR("no icon in resource file\n");
 COMDLG32_SetCommDlgExtendedError(CDERR_LOADRESFAILURE);
 EndDialog(hDlg, FALSE);
    }





    if (lppd->Flags & PD_SHOWHELP) {
        if((PrintStructures->HelpMessageID =
     RegisterWindowMessageW(HELPMSGSTRINGW)) == 0) {
     COMDLG32_SetCommDlgExtendedError(CDERR_REGISTERMSGFAIL);
     return FALSE;
 }
    } else
        PrintStructures->HelpMessageID = 0;

    if(!(lppd->Flags &PD_PRINTSETUP)) {
        PrintStructures->hwndUpDown =
   CreateUpDownControl(WS_CHILD | WS_VISIBLE | WS_BORDER |
         UDS_NOTHOUSANDS | UDS_ARROWKEYS |
         UDS_ALIGNRIGHT | UDS_SETBUDDYINT, 0, 0, 0, 0,
         hDlg, UPDOWN_ID, COMDLG32_hInstance,
         GetDlgItem(hDlg, edt3), MAX_COPIES, 1, 1);
    }





    if (lppd->nMaxPage < lppd->nMinPage)
     lppd->nMaxPage = lppd->nMinPage;
    if (lppd->nMinPage == lppd->nMaxPage)
     lppd->Flags |= PD_NOPAGENUMS;
    if (lppd->nToPage < lppd->nMinPage)
        lppd->nToPage = lppd->nMinPage;
    if (lppd->nToPage > lppd->nMaxPage)
        lppd->nToPage = lppd->nMaxPage;
    if (lppd->nFromPage < lppd->nMinPage)
        lppd->nFromPage = lppd->nMinPage;
    if (lppd->nFromPage > lppd->nMaxPage)
        lppd->nFromPage = lppd->nMaxPage;


    if (GetDlgItem(hDlg,comboID)) {


 pdn = GlobalLock(lppd->hDevNames);
 pdm = GlobalLock(lppd->hDevMode);
 if(pdn)
     name = (WCHAR*)pdn + pdn->wDeviceOffset;
 else if(pdm)
     name = pdm->dmDeviceName;
 PRINTDLG_SetUpPrinterListComboW(hDlg, comboID, name);
 if(pdm) GlobalUnlock(lppd->hDevMode);
 if(pdn) GlobalUnlock(lppd->hDevNames);



 name = HeapAlloc(GetProcessHeap(),0,256*sizeof(WCHAR));
 if (GetDlgItemTextW(hDlg, comboID, name, 255))
     PRINTDLG_ChangePrinterW(hDlg, name, PrintStructures);
 HeapFree(GetProcessHeap(),0,name);
    } else {

 WCHAR name[200];
        DWORD dwBufLen = ARRAY_SIZE(name);
 BOOL ret = GetDefaultPrinterW(name, &dwBufLen);

 if (ret)
     PRINTDLG_ChangePrinterW(hDlg, name, PrintStructures);
 else
     FIXME("No default printer found, expect problems!\n");
    }
    return TRUE;
}
