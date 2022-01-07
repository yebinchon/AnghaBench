
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int hwndParent; } ;
struct TYPE_6__ {int hwndNotify; } ;
typedef int LRESULT ;
typedef TYPE_1__ HOTKEY_INFO ;
typedef TYPE_2__ CREATESTRUCTW ;


 int GetStockObject (int ) ;
 int HOTKEY_SetFont (TYPE_1__*,int ,int ) ;
 int SYSTEM_FONT ;

__attribute__((used)) static LRESULT
HOTKEY_Create (HOTKEY_INFO *infoPtr, const CREATESTRUCTW *lpcs)
{
    infoPtr->hwndNotify = lpcs->hwndParent;

    HOTKEY_SetFont(infoPtr, GetStockObject(SYSTEM_FONT), 0);

    return 0;
}
