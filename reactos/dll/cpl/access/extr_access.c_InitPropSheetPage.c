
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
typedef int VOID ;
struct TYPE_4__ {int dwSize; scalar_t__ lParam; int pfnDlgProc; int pszTemplate; int hInstance; int dwFlags; } ;
typedef TYPE_1__ PROPSHEETPAGE ;
typedef scalar_t__ PGLOBAL_DATA ;
typedef scalar_t__ LPARAM ;
typedef int DLGPROC ;


 int MAKEINTRESOURCE (int ) ;
 int PSP_DEFAULT ;
 int ZeroMemory (TYPE_1__*,int) ;
 int hApplet ;

__attribute__((used)) static VOID
InitPropSheetPage(PROPSHEETPAGE *psp, WORD idDlg, DLGPROC DlgProc, PGLOBAL_DATA pGlobalData)
{
    ZeroMemory(psp, sizeof(PROPSHEETPAGE));
    psp->dwSize = sizeof(PROPSHEETPAGE);
    psp->dwFlags = PSP_DEFAULT;
    psp->hInstance = hApplet;
    psp->pszTemplate = MAKEINTRESOURCE(idDlg);
    psp->pfnDlgProc = DlgProc;
    psp->lParam = (LPARAM)pGlobalData;
}
