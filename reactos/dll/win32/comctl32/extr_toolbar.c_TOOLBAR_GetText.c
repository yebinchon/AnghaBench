
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int iString; } ;
struct TYPE_5__ {int nNumStrings; int ** strings; } ;
typedef TYPE_1__ TOOLBAR_INFO ;
typedef TYPE_2__ TBUTTON_INFO ;
typedef int * LPWSTR ;


 int IS_INTRESOURCE (int) ;

__attribute__((used)) static LPWSTR
TOOLBAR_GetText(const TOOLBAR_INFO *infoPtr, const TBUTTON_INFO *btnPtr)
{
    LPWSTR lpText = ((void*)0);


    if (!IS_INTRESOURCE(btnPtr->iString) && (btnPtr->iString != -1))
        lpText = (LPWSTR)btnPtr->iString;
    else if ((btnPtr->iString >= 0) && (btnPtr->iString < infoPtr->nNumStrings))
        lpText = infoPtr->strings[btnPtr->iString];

    return lpText;
}
