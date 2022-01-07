
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
typedef int VOID ;
struct TYPE_4__ {int dwSize; int pfnDlgProc; int pszTemplate; int hInstance; int dwFlags; } ;
typedef TYPE_1__ PROPSHEETPAGEW ;
typedef int DLGPROC ;


 int MAKEINTRESOURCEW (int ) ;
 int PSP_DEFAULT ;
 int ZeroMemory (TYPE_1__*,int) ;
 int hApplet ;

__attribute__((used)) static VOID
InitPropSheetPage(PROPSHEETPAGEW *page, WORD idDlg, DLGPROC DlgProc)
{
    ZeroMemory(page, sizeof(*page));

    page->dwSize = sizeof(*page);
    page->dwFlags = PSP_DEFAULT;
    page->hInstance = hApplet;
    page->pszTemplate = MAKEINTRESOURCEW(idDlg);
    page->pfnDlgProc = DlgProc;
}
