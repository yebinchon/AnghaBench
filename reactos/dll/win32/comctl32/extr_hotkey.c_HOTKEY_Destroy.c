
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hwndSelf; } ;
typedef int LRESULT ;
typedef TYPE_1__ HOTKEY_INFO ;


 int SetWindowLongPtrW (int ,int ,int ) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static LRESULT
HOTKEY_Destroy (HOTKEY_INFO *infoPtr)
{

    SetWindowLongPtrW (infoPtr->hwndSelf, 0, 0);
    heap_free (infoPtr);
    return 0;
}
