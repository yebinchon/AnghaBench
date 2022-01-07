
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROPSHEETHEADER ;
typedef int * (* PCreateNetIDPropertyPage ) () ;
typedef int LPARAM ;
typedef int * HPROPSHEETPAGE ;
typedef int * HMODULE ;


 int DestroyPropertySheetPage (int *) ;
 int FreeLibrary (int *) ;
 scalar_t__ GetProcAddress (int *,char*) ;
 int * LoadLibrary (int ) ;
 int PropSheetAddPage (int *,int ) ;
 int TEXT (char*) ;

__attribute__((used)) static HMODULE
AddNetIdPage(PROPSHEETHEADER *ppsh)
{
    HPROPSHEETPAGE hPage;
    HMODULE hMod;
    PCreateNetIDPropertyPage pCreateNetIdPage;

    hMod = LoadLibrary(TEXT("netid.dll"));
    if (hMod != ((void*)0))
    {
        pCreateNetIdPage = (PCreateNetIDPropertyPage)GetProcAddress(hMod,
                                                                    "CreateNetIDPropertyPage");
        if (pCreateNetIdPage != ((void*)0))
        {
            hPage = pCreateNetIdPage();
            if (hPage == ((void*)0))
                goto Fail;

            if (!PropSheetAddPage(hPage, (LPARAM)ppsh))
            {
                DestroyPropertySheetPage(hPage);
                goto Fail;
            }
        }
        else
        {
Fail:
            FreeLibrary(hMod);
            hMod = ((void*)0);
        }
    }

    return hMod;
}
