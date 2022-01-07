
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
typedef int UINT ;
struct TYPE_11__ {void* dmOrientation; void* dmDefaultSource; void* dmPaperSize; } ;
struct TYPE_12__ {TYPE_1__ s1; } ;
struct TYPE_15__ {TYPE_2__ u1; scalar_t__ dmFormName; } ;
struct TYPE_14__ {int Flags; void* nToPage; void* nFromPage; int hwndOwner; } ;
struct TYPE_13__ {int hLandscapeIcon; int hPortraitIcon; TYPE_5__* lpDevMode; int hNoCollateIcon; int hCollateIcon; int HelpMessageID; TYPE_4__* lpPrintDlg; } ;
typedef TYPE_3__ PRINT_PTRA ;
typedef int LRESULT ;
typedef TYPE_4__* LPPRINTDLGA ;
typedef TYPE_5__* LPDEVMODEA ;
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
 int DocumentPropertiesA (int ,int ,char*,TYPE_5__*,TYPE_5__*,int) ;
 int EN_CHANGE ;
 int EnableWindow (int ,int ) ;
 int EndDialog (int ,int ) ;
 int FALSE ;
 int FIXME (char*) ;
 int GetDlgItem (int ,int const) ;
 void* GetDlgItemInt (int ,int const,int *,int ) ;
 int GetDlgItemTextA (int ,int const,char*,int) ;
 int GetProcessHeap () ;
 int HIWORD (int ) ;
 char* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,char*) ;


 int IMAGE_ICON ;
 int IsDlgButtonChecked (int ,int const) ;
 int LOWORD (int ) ;
 int OpenPrinterA (char*,int *,int *) ;
 int PD_PRINTSETUP ;
 int PRINTDLG_ChangePrinterA (int ,char*,TYPE_3__*) ;
 int PRINTDLG_UpdatePrintDlgA (int ,TYPE_3__*) ;
 int STM_SETIMAGE ;
 void* SendDlgItemMessageA (int ,int const,int ,int,int ) ;
 int SendDlgItemMessageW (int ,int,int ,int,int ) ;
 int SendMessageA (int ,int ,int ,int ) ;
 int TRACE (char*) ;
 int TRUE ;
 int const ico1 ;
 int const ico3 ;




 int rad3 ;
 int const stc10 ;

__attribute__((used)) static LRESULT PRINTDLG_WMCommandA(HWND hDlg, WPARAM wParam,
                                   PRINT_PTRA* PrintStructures)
{
    LPPRINTDLGA lppd = PrintStructures->lpPrintDlg;
    UINT PrinterComboID = (lppd->Flags & PD_PRINTSETUP) ? 138 : 135;
    LPDEVMODEA lpdm = PrintStructures->lpDevMode;

    switch (LOWORD(wParam)) {
    case 140:
        TRACE(" OK button was hit\n");
        if (!PRINTDLG_UpdatePrintDlgA(hDlg, PrintStructures)) {
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
        SendMessageA(lppd->hwndOwner, PrintStructures->HelpMessageID,
           (WPARAM) hDlg, (LPARAM) lppd);
        break;

     case 139:
        if (IsDlgButtonChecked(hDlg, 139) == BST_CHECKED)
            SendDlgItemMessageA(hDlg, ico3, STM_SETIMAGE, IMAGE_ICON,
                                    (LPARAM)PrintStructures->hCollateIcon);
        else
            SendDlgItemMessageA(hDlg, ico3, STM_SETIMAGE, IMAGE_ICON,
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
         char PrinterName[256];

         GetDlgItemTextA(hDlg, PrinterComboID, PrinterName, 255);
         if (!OpenPrinterA(PrinterName, &hPrinter, ((void*)0))) {
      FIXME(" Call to OpenPrinter did not succeed!\n");
      break;
  }
  DocumentPropertiesA(hDlg, hPrinter, PrinterName,
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
              SendDlgItemMessageA(hDlg, ico1, STM_SETIMAGE, IMAGE_ICON,
                          (LPARAM)(PrintStructures->hPortraitIcon));
        }
        break;

    case 128:
        if (lppd->Flags & PD_PRINTSETUP)
        {
              lpdm->u1.s1.dmOrientation = DMORIENT_LANDSCAPE;
              SendDlgItemMessageA(hDlg, ico1, STM_SETIMAGE, IMAGE_ICON,
                          (LPARAM)(PrintStructures->hLandscapeIcon));
        }
        break;

    case 138:
  if (PrinterComboID != LOWORD(wParam)) {
      break;
  }

    case 135:
         if (HIWORD(wParam)==CBN_SELCHANGE) {
      char *PrinterName;
      INT index = SendDlgItemMessageW(hDlg, LOWORD(wParam), CB_GETCURSEL, 0, 0);
      INT length = SendDlgItemMessageW(hDlg, LOWORD(wParam), CB_GETLBTEXTLEN, index, 0);
      PrinterName = HeapAlloc(GetProcessHeap(),0,length+1);
      SendDlgItemMessageA(hDlg, LOWORD(wParam), CB_GETLBTEXT, index, (LPARAM)PrinterName);
      PRINTDLG_ChangePrinterA(hDlg, PrinterName, PrintStructures);
      HeapFree(GetProcessHeap(),0,PrinterName);
  }
  break;

    case 137:
      {
   DWORD Sel = SendDlgItemMessageA(hDlg, 137, CB_GETCURSEL, 0, 0);
   if(Sel != CB_ERR) {
       lpdm->u1.s1.dmPaperSize = SendDlgItemMessageA(hDlg, 137,
           CB_GETITEMDATA,
           Sel, 0);
       GetDlgItemTextA(hDlg, 137, (char *)lpdm->dmFormName, CCHFORMNAME);
   }
      }
      break;

    case 136:
      {
   DWORD Sel = SendDlgItemMessageA(hDlg, 136, CB_GETCURSEL, 0, 0);
   if(Sel != CB_ERR)
       lpdm->u1.s1.dmDefaultSource = SendDlgItemMessageA(hDlg, 136,
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
                    SendDlgItemMessageA(hDlg, stc10, STM_SETIMAGE, IMAGE_ICON,
     (LPARAM)PrintStructures->hPortraitIcon);
                    SendDlgItemMessageA(hDlg, ico1, STM_SETIMAGE, IMAGE_ICON,
     (LPARAM)PrintStructures->hPortraitIcon);
  }
     } else {
         if(lpdm->u1.s1.dmOrientation != DMORIENT_LANDSCAPE) {
             lpdm->u1.s1.dmOrientation = DMORIENT_LANDSCAPE;
                    SendDlgItemMessageA(hDlg, stc10, STM_SETIMAGE, IMAGE_ICON,
     (LPARAM)PrintStructures->hLandscapeIcon);
                    SendDlgItemMessageA(hDlg, ico1, STM_SETIMAGE, IMAGE_ICON,
     (LPARAM)PrintStructures->hLandscapeIcon);
  }
     }
     break;
 }
    }
    return FALSE;
}
