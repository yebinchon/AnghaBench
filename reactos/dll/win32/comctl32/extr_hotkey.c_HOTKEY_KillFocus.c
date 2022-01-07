
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bFocus; } ;
typedef int LRESULT ;
typedef TYPE_1__ HOTKEY_INFO ;


 int DestroyCaret () ;
 int FALSE ;

__attribute__((used)) static LRESULT
HOTKEY_KillFocus (HOTKEY_INFO *infoPtr)
{
    infoPtr->bFocus = FALSE;
    DestroyCaret ();

    return 0;
}
