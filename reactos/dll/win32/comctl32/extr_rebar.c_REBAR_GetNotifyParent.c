
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndSelf; scalar_t__ hwndNotify; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef scalar_t__ HWND ;


 int GW_OWNER ;
 scalar_t__ GetParent (int ) ;
 scalar_t__ GetWindow (int ,int ) ;

__attribute__((used)) static HWND
REBAR_GetNotifyParent (const REBAR_INFO *infoPtr)
{
    HWND parent, owner;

    parent = infoPtr->hwndNotify;
    if (!parent) {
        parent = GetParent (infoPtr->hwndSelf);
 owner = GetWindow (infoPtr->hwndSelf, GW_OWNER);
 if (owner) parent = owner;
    }
    return parent;
}
