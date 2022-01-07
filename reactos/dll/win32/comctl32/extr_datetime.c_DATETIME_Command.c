
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_4__ {scalar_t__ hwndCheckbut; } ;
typedef int LRESULT ;
typedef scalar_t__ LPARAM ;
typedef scalar_t__ HWND ;
typedef TYPE_1__ DATETIME_INFO ;


 int DATETIME_Button_Command (TYPE_1__*,int ,scalar_t__) ;
 int TRACE (char*,scalar_t__) ;

__attribute__((used)) static LRESULT
DATETIME_Command (DATETIME_INFO *infoPtr, WPARAM wParam, LPARAM lParam)
{
    TRACE("hwndbutton = %p\n", infoPtr->hwndCheckbut);
    if(infoPtr->hwndCheckbut == (HWND)lParam)
        return DATETIME_Button_Command(infoPtr, wParam, lParam);
    return 0;
}
