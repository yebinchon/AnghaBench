
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * NextStyle; int * ChildStyle; struct TYPE_4__* StyleName; int * DisplayName; } ;
typedef int THEME_STYLE ;
typedef TYPE_1__* PTHEME_STYLE ;
typedef int LPCWSTR ;


 void* _wcsdup (int ) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static PTHEME_STYLE
CreateStyle(LPCWSTR pszName, LPCWSTR pszDisplayName)
{
    PTHEME_STYLE pStyle;

    pStyle = (PTHEME_STYLE) malloc(sizeof(THEME_STYLE));
    if (pStyle == ((void*)0)) return ((void*)0);

    pStyle->StyleName = _wcsdup(pszName);
    if (pStyle->StyleName == ((void*)0))
    {
        free(pStyle);
        return ((void*)0);
    }

    pStyle->DisplayName = _wcsdup(pszDisplayName);
    if (pStyle->DisplayName == ((void*)0))
    {
        free(pStyle->StyleName);
        free(pStyle);
        return ((void*)0);
    }

    pStyle->ChildStyle = ((void*)0);
    pStyle->NextStyle = ((void*)0);

    return pStyle;
}
