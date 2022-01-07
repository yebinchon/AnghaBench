
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* Part; } ;
struct TYPE_4__ {int EditHwnd; } ;
typedef TYPE_2__ IPADDRESS_INFO ;
typedef int INT ;


 int SetFocus (int ) ;
 int TRACE (char*,int) ;

__attribute__((used)) static void IPADDRESS_SetFocusToField (const IPADDRESS_INFO *infoPtr, INT index)
{
    TRACE("(index=%d)\n", index);

    if (index > 3 || index < 0) index=0;

    SetFocus (infoPtr->Part[index].EditHwnd);
}
