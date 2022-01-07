
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndSelf; } ;
typedef int LRESULT ;
typedef TYPE_1__ HOTKEY_INFO ;


 int GWL_STYLE ;
 int GetWindowLongW (int ,int ) ;
 int SetFocus (int ) ;
 int WS_DISABLED ;

__attribute__((used)) static LRESULT
HOTKEY_LButtonDown (const HOTKEY_INFO *infoPtr)
{
    if (!(GetWindowLongW(infoPtr->hwndSelf, GWL_STYLE) & WS_DISABLED))
        SetFocus (infoPtr->hwndSelf);

    return 0;
}
