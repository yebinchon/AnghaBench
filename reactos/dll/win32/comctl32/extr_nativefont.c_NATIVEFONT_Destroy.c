
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hwndSelf; } ;
typedef TYPE_1__ NATIVEFONT_INFO ;
typedef int LRESULT ;


 int Free (TYPE_1__*) ;
 int SetWindowLongPtrW (int ,int ,int ) ;

__attribute__((used)) static LRESULT
NATIVEFONT_Destroy (NATIVEFONT_INFO *infoPtr)
{

    SetWindowLongPtrW( infoPtr->hwndSelf, 0, 0 );
    Free (infoPtr);

    return 0;
}
