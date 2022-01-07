
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ WORD ;
typedef int WCHAR ;
struct TYPE_13__ {int Flags; scalar_t__ nMinPage; scalar_t__ nMaxPage; int nCopies; scalar_t__ nToPage; scalar_t__ nFromPage; } ;
struct TYPE_12__ {char* pPortName; } ;
struct TYPE_8__ {int dmCopies; int dmPrintQuality; } ;
struct TYPE_9__ {TYPE_1__ s1; } ;
struct TYPE_11__ {int dmFields; int dmCollate; int dmYResolution; TYPE_2__ u1; } ;
struct TYPE_10__ {TYPE_5__* lpPrinterInfo; TYPE_4__* lpDevMode; TYPE_6__* lpPrintDlg; } ;
typedef TYPE_3__ PRINT_PTRA ;
typedef TYPE_4__* PDEVMODEA ;
typedef TYPE_5__* LPPRINTER_INFO_2A ;
typedef TYPE_6__* LPPRINTDLGA ;
typedef void* LONG ;
typedef scalar_t__ HWND ;
typedef int BOOL ;


 scalar_t__ BST_CHECKED ;
 int CB_ERR ;
 int CB_GETCURSEL ;
 int CB_GETITEMDATA ;
 int COMDLG32_hInstance ;
 int DM_COLLATE ;
 int DM_COPIES ;
 int DM_PRINTQUALITY ;
 int DM_YRESOLUTION ;
 int FALSE ;
 int FIXME (char*) ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 void* GetDlgItemInt (scalar_t__,int ,int *,int ) ;
 int HIWORD (void*) ;
 scalar_t__ IsDlgButtonChecked (scalar_t__,int ) ;
 int LOWORD (void*) ;
 int LoadStringW (int ,int ,int *,int) ;
 int MB_ICONWARNING ;
 int MB_OK ;
 int MessageBoxW (scalar_t__,int *,int *,int) ;
 int PD32_INVALID_PAGE_RANGE ;
 int PD32_PRINT_TITLE ;
 int PD_COLLATE ;
 int PD_PAGENUMS ;
 int PD_PRINTSETUP ;
 int PD_PRINTTOFILE ;
 int PD_SELECTION ;
 int PD_USEDEVMODECOPIESANDCOLLATE ;
 void* SendMessageA (scalar_t__,int ,int,int ) ;
 int TRUE ;
 int chx1 ;
 int chx2 ;
 int cmb1 ;
 int edt1 ;
 int edt2 ;
 int edt3 ;
 int rad2 ;
 int rad3 ;
 int wsprintfW (int *,int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static BOOL PRINTDLG_UpdatePrintDlgA(HWND hDlg,
        PRINT_PTRA* PrintStructures)
{
    LPPRINTDLGA lppd = PrintStructures->lpPrintDlg;
    PDEVMODEA lpdm = PrintStructures->lpDevMode;
    LPPRINTER_INFO_2A pi = PrintStructures->lpPrinterInfo;


    if(!lpdm) {
 FIXME("No lpdm ptr?\n");
 return FALSE;
    }


    if(!(lppd->Flags & PD_PRINTSETUP)) {



        if (IsDlgButtonChecked(hDlg, rad3) == BST_CHECKED) {
     WORD nToPage;
     WORD nFromPage;
            BOOL translated;
     nFromPage = GetDlgItemInt(hDlg, edt1, ((void*)0), FALSE);
     nToPage = GetDlgItemInt(hDlg, edt2, &translated, FALSE);


     if(!translated) nToPage = nFromPage;

     if (nFromPage < lppd->nMinPage || nFromPage > lppd->nMaxPage ||
  nToPage < lppd->nMinPage || nToPage > lppd->nMaxPage) {
         WCHAR resourcestr[256];
  WCHAR resultstr[256];
  LoadStringW(COMDLG32_hInstance, PD32_INVALID_PAGE_RANGE, resourcestr, 255);
  wsprintfW(resultstr,resourcestr, lppd->nMinPage, lppd->nMaxPage);
  LoadStringW(COMDLG32_hInstance, PD32_PRINT_TITLE, resourcestr, 255);
  MessageBoxW(hDlg, resultstr, resourcestr, MB_OK | MB_ICONWARNING);
  return FALSE;
     }
     lppd->nFromPage = nFromPage;
     lppd->nToPage = nToPage;
     lppd->Flags |= PD_PAGENUMS;
 }
 else
     lppd->Flags &= ~PD_PAGENUMS;

        if (IsDlgButtonChecked(hDlg, rad2) == BST_CHECKED)
            lppd->Flags |= PD_SELECTION;
        else
            lppd->Flags &= ~PD_SELECTION;

 if (IsDlgButtonChecked(hDlg, chx1) == BST_CHECKED) {
     static char file[] = "FILE:";
     lppd->Flags |= PD_PRINTTOFILE;
     pi->pPortName = file;
 }

 if (IsDlgButtonChecked(hDlg, chx2) == BST_CHECKED) {
     FIXME("Collate lppd not yet implemented as output\n");
 }


 if (lppd->Flags & PD_USEDEVMODECOPIESANDCOLLATE) {


     lppd->Flags &= ~PD_COLLATE;
     lppd->nCopies = 1;



     if (lpdm->dmFields & DM_COLLATE)
         lpdm->dmCollate =
    (IsDlgButtonChecked(hDlg, chx2) == BST_CHECKED);
     if (lpdm->dmFields & DM_COPIES)
         lpdm->u1.s1.dmCopies = GetDlgItemInt(hDlg, edt3, ((void*)0), FALSE);
 } else {

     if (IsDlgButtonChecked(hDlg, chx2) == BST_CHECKED)
         lppd->Flags |= PD_COLLATE;
            else
               lppd->Flags &= ~PD_COLLATE;
            lppd->nCopies = GetDlgItemInt(hDlg, edt3, ((void*)0), FALSE);

            lpdm->u1.s1.dmCopies = 1;
 }


 if(GetDlgItem(hDlg, cmb1))
 {
     HWND hQuality = GetDlgItem(hDlg, cmb1);
     int Sel = SendMessageA(hQuality, CB_GETCURSEL, 0, 0);

     if(Sel != CB_ERR)
     {
  LONG dpi = SendMessageA(hQuality, CB_GETITEMDATA, Sel, 0);
  lpdm->dmFields |= DM_PRINTQUALITY | DM_YRESOLUTION;
  lpdm->u1.s1.dmPrintQuality = LOWORD(dpi);
  lpdm->dmYResolution = HIWORD(dpi);
     }
 }
    }
    return TRUE;
}
