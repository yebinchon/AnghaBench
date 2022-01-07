
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int WPARAM ;
typedef void* WORD ;
typedef int WCHAR ;
typedef int const UINT ;
struct TYPE_11__ {void* dmOrientation; void* dmDefaultSource; void* dmPaperSize; } ;
struct TYPE_12__ {TYPE_1__ s1; } ;
struct TYPE_15__ {TYPE_2__ u1; int * dmFormName; } ;
struct TYPE_14__ {int Flags; void* nToPage; void* nFromPage; int hwndOwner; } ;
struct TYPE_13__ {int hLandscapeIcon; int hPortraitIcon; TYPE_5__* lpDevMode; int hNoCollateIcon; int hCollateIcon; int HelpMessageID; TYPE_4__* lpPrintDlg; } ;
typedef TYPE_3__ PRINT_PTRW ;
typedef int LRESULT ;
typedef TYPE_4__* LPPRINTDLGW ;
typedef TYPE_5__* LPDEVMODEW ;
typedef int LPARAM ;
typedef int INT ;
typedef int HWND ;
typedef int HANDLE ;
typedef int DWORD ;


 int BST_CHECKED ;
 int CBN_SELCHANGE ;
 int CB_ERR ;
 int CB_GETCURSEL ;
 int CB_GETITEMDATA ;
 int CB_GETLBTEXT ;
 int CB_GETLBTEXTLEN ;
 int CCHFORMNAME ;
 int CheckRadioButton (int ,int,int ,int ) ;
 int ClosePrinter (int ) ;
 void* DMORIENT_LANDSCAPE ;
 void* DMORIENT_PORTRAIT ;
 int DM_IN_BUFFER ;
 int DM_IN_PROMPT ;
 int DM_OUT_BUFFER ;
 int DocumentPropertiesW (int ,int ,int *,TYPE_5__*,TYPE_5__*,int) ;
 int EN_CHANGE ;
 int EnableWindow (int ,int ) ;
 int EndDialog (int ,int ) ;
 int FALSE ;
 int FIXME (char*) ;
 int GetDlgItem (int ,int const) ;
 void* GetDlgItemInt (int ,int const,int *,int ) ;
 int GetDlgItemTextW (int ,int const,int *,int) ;
 int GetProcessHeap () ;
 int HIWORD (int ) ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;


 int IMAGE_ICON ;
 int IsDlgButtonChecked (int ,int const) ;
 int LOWORD (int ) ;
 int OpenPrinterW (int *,int *,int *) ;
 int PD_PRINTSETUP ;
 int PRINTDLG_ChangePrinterW (int ,int *,TYPE_3__*) ;
 int PRINTDLG_UpdatePrintDlgW (int ,TYPE_3__*) ;
 int STM_SETIMAGE ;
 void* SendDlgItemMessageW (int ,int const,int ,int,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*) ;
 int TRUE ;
 int const ico1 ;
 int const ico3 ;




 int rad3 ;
 int const stc10 ;

__attribute__((used)) static LRESULT PRINTDLG_WMCommandW(HWND hDlg, WPARAM wParam,
              PRINT_PTRW* PrintStructures)
{
    LPPRINTDLGW lppd = PrintStructures->lpPrintDlg;
    UINT PrinterComboID = (lppd->Flags & PD_PRINTSETUP) ? 138 : 135;
    LPDEVMODEW lpdm = PrintStructures->lpDevMode;

    switch (LOWORD(wParam)) {
    case 140:
        TRACE(" OK button was hit\n");
        if (!PRINTDLG_UpdatePrintDlgW(hDlg, PrintStructures)) {
     FIXME("Update printdlg was not successful!\n");
     return(FALSE);
 }
 EndDialog(hDlg, TRUE);
 return(TRUE);

    case 141:
        TRACE(" CANCEL button was hit\n");
        EndDialog(hDlg, FALSE);
 return(FALSE);

     case 130:
        TRACE(" HELP button was hit\n");
        SendMessageW(lppd->hwndOwner, PrintStructures->HelpMessageID,
           (WPARAM) hDlg, (LPARAM) lppd);
        break;

     case 139:
        if (IsDlgButtonChecked(hDlg, 139) == BST_CHECKED)
            SendDlgItemMessageW(hDlg, ico3, STM_SETIMAGE, IMAGE_ICON,
                                    (LPARAM)PrintStructures->hCollateIcon);
        else
            SendDlgItemMessageW(hDlg, ico3, STM_SETIMAGE, IMAGE_ICON,
                                    (LPARAM)PrintStructures->hNoCollateIcon);
        break;
     case 134:
     case 133:
        if (HIWORD(wParam)==EN_CHANGE) {
     WORD nToPage;
     WORD nFromPage;
     nFromPage = GetDlgItemInt(hDlg, 134, ((void*)0), FALSE);
     nToPage = GetDlgItemInt(hDlg, 133, ((void*)0), FALSE);
            if (nFromPage != lppd->nFromPage || nToPage != lppd->nToPage)
         CheckRadioButton(hDlg, 129, rad3, rad3);
 }
        break;

    case 132:
        if(HIWORD(wParam) == EN_CHANGE) {
     INT copies = GetDlgItemInt(hDlg, 132, ((void*)0), FALSE);
     if(copies <= 1)
         EnableWindow(GetDlgItem(hDlg, 139), FALSE);
     else
                EnableWindow(GetDlgItem(hDlg, 139), TRUE);
        }
        break;

     case 131:
       {
         HANDLE hPrinter;
         WCHAR PrinterName[256];

         if (!GetDlgItemTextW(hDlg, PrinterComboID, PrinterName, 255)) break;
         if (!OpenPrinterW(PrinterName, &hPrinter, ((void*)0))) {
      FIXME(" Call to OpenPrinter did not succeed!\n");
      break;
  }
  DocumentPropertiesW(hDlg, hPrinter, PrinterName,
        PrintStructures->lpDevMode,
        PrintStructures->lpDevMode,
        DM_IN_BUFFER | DM_OUT_BUFFER | DM_IN_PROMPT);
  ClosePrinter(hPrinter);
         break;
       }

    case 129:
        if (lppd->Flags & PD_PRINTSETUP)
        {
              lpdm->u1.s1.dmOrientation = DMORIENT_PORTRAIT;
              SendDlgItemMessageW(hDlg, ico1, STM_SETIMAGE, IMAGE_ICON,
                          (LPARAM)(PrintStructures->hPortraitIcon));
        }
        break;

    case 128:
        if (lppd->Flags & PD_PRINTSETUP)
        {
              lpdm->u1.s1.dmOrientation = DMORIENT_LANDSCAPE;
              SendDlgItemMessageW(hDlg, ico1, STM_SETIMAGE, IMAGE_ICON,
                          (LPARAM)(PrintStructures->hLandscapeIcon));
        }
        break;

    case 138:

    case 135:
         if (HIWORD(wParam)==CBN_SELCHANGE) {
      WCHAR *PrinterName;
      INT index = SendDlgItemMessageW(hDlg, LOWORD(wParam), CB_GETCURSEL, 0, 0);
      INT length = SendDlgItemMessageW(hDlg, LOWORD(wParam), CB_GETLBTEXTLEN, index, 0);

      PrinterName = HeapAlloc(GetProcessHeap(),0,sizeof(WCHAR)*(length+1));
      SendDlgItemMessageW(hDlg, LOWORD(wParam), CB_GETLBTEXT, index, (LPARAM)PrinterName);
      PRINTDLG_ChangePrinterW(hDlg, PrinterName, PrintStructures);
      HeapFree(GetProcessHeap(),0,PrinterName);
  }
  break;

    case 137:
      {
   DWORD Sel = SendDlgItemMessageW(hDlg, 137, CB_GETCURSEL, 0, 0);
   if(Sel != CB_ERR) {
       lpdm->u1.s1.dmPaperSize = SendDlgItemMessageW(hDlg, 137,
           CB_GETITEMDATA,
           Sel, 0);
       GetDlgItemTextW(hDlg, 137, lpdm->dmFormName, CCHFORMNAME);
   }
      }
      break;

    case 136:
      {
   DWORD Sel = SendDlgItemMessageW(hDlg, 136, CB_GETCURSEL, 0, 0);
   if(Sel != CB_ERR)
       lpdm->u1.s1.dmDefaultSource = SendDlgItemMessageW(hDlg, 136,
         CB_GETITEMDATA, Sel,
         0);
      }
      break;
    }
    if(lppd->Flags & PD_PRINTSETUP) {
        switch (LOWORD(wParam)) {
 case 129:
 case 128:
     if (IsDlgButtonChecked(hDlg, 129) == BST_CHECKED) {
         if(lpdm->u1.s1.dmOrientation != DMORIENT_PORTRAIT) {
      lpdm->u1.s1.dmOrientation = DMORIENT_PORTRAIT;
                    SendDlgItemMessageW(hDlg, stc10, STM_SETIMAGE, IMAGE_ICON,
     (LPARAM)PrintStructures->hPortraitIcon);
                    SendDlgItemMessageW(hDlg, ico1, STM_SETIMAGE, IMAGE_ICON,
     (LPARAM)PrintStructures->hPortraitIcon);
  }
     } else {
         if(lpdm->u1.s1.dmOrientation != DMORIENT_LANDSCAPE) {
             lpdm->u1.s1.dmOrientation = DMORIENT_LANDSCAPE;
                    SendDlgItemMessageW(hDlg, stc10, STM_SETIMAGE, IMAGE_ICON,
     (LPARAM)PrintStructures->hLandscapeIcon);
                    SendDlgItemMessageW(hDlg, ico1, STM_SETIMAGE, IMAGE_ICON,
     (LPARAM)PrintStructures->hLandscapeIcon);
  }
     }
     break;
 }
    }
    return FALSE;
}
