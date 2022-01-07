
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndNotify; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef int LRESULT ;
typedef int HWND ;



__attribute__((used)) static LRESULT
REBAR_SetParent (REBAR_INFO *infoPtr, HWND parent)
{
    HWND hwndTemp = infoPtr->hwndNotify;

    infoPtr->hwndNotify = parent;

    return (LRESULT)hwndTemp;
}
