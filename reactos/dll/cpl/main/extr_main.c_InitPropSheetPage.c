
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int psp ;
typedef int WORD ;
struct TYPE_7__ {scalar_t__ nPages; } ;
struct TYPE_6__ {int dwSize; int pfnDlgProc; int pszTemplate; int hInstance; int dwFlags; } ;
typedef TYPE_1__ PROPSHEETPAGE ;
typedef TYPE_2__ PROPSHEETHEADER ;
typedef int LPARAM ;
typedef int * HPROPSHEETPAGE ;
typedef int DLGPROC ;
typedef int BOOL ;


 int * CreatePropertySheetPage (TYPE_1__*) ;
 int FALSE ;
 int MAKEINTRESOURCE (int ) ;
 scalar_t__ MAX_CPL_PAGES ;
 int PSP_DEFAULT ;
 int PropSheetAddPage (int *,int ) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int hApplet ;

BOOL
InitPropSheetPage(PROPSHEETHEADER *ppsh, WORD idDlg, DLGPROC DlgProc)
{
    HPROPSHEETPAGE hPage;
    PROPSHEETPAGE psp;

    if (ppsh->nPages < MAX_CPL_PAGES)
    {
        ZeroMemory(&psp, sizeof(psp));
        psp.dwSize = sizeof(psp);
        psp.dwFlags = PSP_DEFAULT;
        psp.hInstance = hApplet;
        psp.pszTemplate = MAKEINTRESOURCE(idDlg);
        psp.pfnDlgProc = DlgProc;

        hPage = CreatePropertySheetPage(&psp);
        if (hPage != ((void*)0))
        {
            return PropSheetAddPage(hPage, (LPARAM)ppsh);
        }
    }

    return FALSE;
}
