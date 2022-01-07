
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
typedef int VOID ;
struct TYPE_4__ {int dwSize; scalar_t__ lParam; int pfnDlgProc; int pszTemplate; int hInstance; int dwFlags; } ;
typedef scalar_t__ PSERVICEPROPSHEET ;
typedef TYPE_1__ PROPSHEETPAGE ;
typedef scalar_t__ LPARAM ;
typedef int DLGPROC ;


 int MAKEINTRESOURCE (int ) ;
 int PSP_DEFAULT ;
 int ZeroMemory (TYPE_1__*,int) ;
 int hInstance ;

__attribute__((used)) static VOID
InitPropSheetPage(PROPSHEETPAGE *psp,
                  PSERVICEPROPSHEET dlgInfo,
                  WORD idDlg,
                  DLGPROC DlgProc)
{
    ZeroMemory(psp, sizeof(PROPSHEETPAGE));
    psp->dwSize = sizeof(PROPSHEETPAGE);
    psp->dwFlags = PSP_DEFAULT;
    psp->hInstance = hInstance;
    psp->pszTemplate = MAKEINTRESOURCE(idDlg);
    psp->pfnDlgProc = DlgProc;
    psp->lParam = (LPARAM)dlgInfo;
}
