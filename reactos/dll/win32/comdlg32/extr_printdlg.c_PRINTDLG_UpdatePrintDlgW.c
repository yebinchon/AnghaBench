
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


typedef int __ms_va_list ;
typedef scalar_t__ WORD ;
typedef float WCHAR ;
struct TYPE_13__ {int Flags; scalar_t__ nMinPage; scalar_t__ nMaxPage; int nCopies; scalar_t__ nToPage; scalar_t__ nFromPage; } ;
struct TYPE_12__ {float* pPortName; } ;
struct TYPE_8__ {void* dmCopies; } ;
struct TYPE_9__ {TYPE_1__ s1; } ;
struct TYPE_11__ {int dmFields; int dmCollate; TYPE_2__ u1; } ;
struct TYPE_10__ {TYPE_5__* lpPrinterInfo; TYPE_4__* lpDevMode; TYPE_6__* lpPrintDlg; } ;
typedef TYPE_3__ PRINT_PTRW ;
typedef TYPE_4__* PDEVMODEW ;
typedef TYPE_5__* LPPRINTER_INFO_2W ;
typedef TYPE_6__* LPPRINTDLGW ;
typedef int HWND ;
typedef scalar_t__ DWORD_PTR ;
typedef int BOOL ;


 int ARRAY_SIZE (float*) ;
 scalar_t__ BST_CHECKED ;
 int COMDLG32_hInstance ;
 int DM_COLLATE ;
 int DM_COPIES ;
 int FALSE ;
 int FIXME (char*) ;
 int FORMAT_MESSAGE_ARGUMENT_ARRAY ;
 int FORMAT_MESSAGE_FROM_STRING ;
 int FormatMessageW (int,float*,int ,int ,float*,int ,int *) ;
 void* GetDlgItemInt (int ,int ,int *,int ) ;
 scalar_t__ IsDlgButtonChecked (int ,int ) ;
 int LoadStringW (int ,int ,float*,int) ;
 int MB_ICONWARNING ;
 int MB_OK ;
 int MessageBoxW (int ,float*,float*,int) ;
 int PD32_INVALID_PAGE_RANGE ;
 int PD32_PRINT_TITLE ;
 int PD_COLLATE ;
 int PD_PAGENUMS ;
 int PD_PRINTSETUP ;
 int PD_PRINTTOFILE ;
 int PD_SELECTION ;
 int PD_USEDEVMODECOPIESANDCOLLATE ;
 int TRUE ;
 int chx1 ;
 int chx2 ;
 int edt1 ;
 int edt2 ;
 int edt3 ;
 int rad2 ;
 int rad3 ;

__attribute__((used)) static BOOL PRINTDLG_UpdatePrintDlgW(HWND hDlg,
        PRINT_PTRW* PrintStructures)
{
    LPPRINTDLGW lppd = PrintStructures->lpPrintDlg;
    PDEVMODEW lpdm = PrintStructures->lpDevMode;
    LPPRINTER_INFO_2W pi = PrintStructures->lpPrinterInfo;


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
                DWORD_PTR args[2];
  LoadStringW(COMDLG32_hInstance, PD32_INVALID_PAGE_RANGE,
       resourcestr, 255);
                args[0] = lppd->nMinPage;
                args[1] = lppd->nMaxPage;
                FormatMessageW(FORMAT_MESSAGE_FROM_STRING|FORMAT_MESSAGE_ARGUMENT_ARRAY,
                               resourcestr, 0, 0, resultstr,
                               ARRAY_SIZE(resultstr),
                               (__ms_va_list*)args);
  LoadStringW(COMDLG32_hInstance, PD32_PRINT_TITLE,
       resourcestr, 255);
  MessageBoxW(hDlg, resultstr, resourcestr,
       MB_OK | MB_ICONWARNING);
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
     static WCHAR file[] = {'F','I','L','E',':',0};
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
 }
    }
    return TRUE;
}
