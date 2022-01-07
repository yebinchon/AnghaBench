
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* DisplayName; int * ThemeFileName; int * SizesList; int * NextTheme; int * ColoursList; } ;
typedef TYPE_1__ THEME ;
typedef TYPE_1__* PTHEME ;
typedef int * LPCWSTR ;


 void* _wcsdup (int *) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static THEME*
CreateTheme(LPCWSTR pszName, LPCWSTR pszDisplayName)
{
    PTHEME pTheme;

    pTheme = (PTHEME) malloc(sizeof(THEME));
    if (pTheme == ((void*)0)) return ((void*)0);

    pTheme->DisplayName = _wcsdup(pszDisplayName);
    if (pTheme->DisplayName == ((void*)0))
    {
        free(pTheme);
        return ((void*)0);
    }

    pTheme->ColoursList = ((void*)0);
    pTheme->NextTheme = ((void*)0);
    pTheme->SizesList = ((void*)0);

    if (pszName == ((void*)0))
    {
        pTheme->ThemeFileName = ((void*)0);
        return pTheme;
    }

    pTheme->ThemeFileName = _wcsdup(pszName);
    if (pTheme->ThemeFileName == ((void*)0))
    {
        free(pTheme->DisplayName);
        free(pTheme);
        return ((void*)0);
    }

    return pTheme;
}
