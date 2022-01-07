
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int BRbtnState; int TLbtnState; int hwndSelf; } ;
typedef TYPE_1__ PAGER_INFO ;
typedef int LRESULT ;
typedef scalar_t__ INT ;


 scalar_t__ PGB_BOTTOMORRIGHT ;
 scalar_t__ PGB_TOPORLEFT ;
 int PGF_INVISIBLE ;
 int TRACE (char*,int ) ;

__attribute__((used)) static inline LRESULT
PAGER_GetButtonState (const PAGER_INFO* infoPtr, INT btn)
{
    LRESULT btnState = PGF_INVISIBLE;
    TRACE("[%p]\n", infoPtr->hwndSelf);

    if (btn == PGB_TOPORLEFT)
        btnState = infoPtr->TLbtnState;
    else if (btn == PGB_BOTTOMORRIGHT)
        btnState = infoPtr->BRbtnState;

    return btnState;
}
