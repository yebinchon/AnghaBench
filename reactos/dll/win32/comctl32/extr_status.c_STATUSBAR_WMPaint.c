
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Self; } ;
typedef TYPE_1__ STATUS_INFO ;
typedef int PAINTSTRUCT ;
typedef int LRESULT ;
typedef int HDC ;


 int BeginPaint (int ,int *) ;
 int EndPaint (int ,int *) ;
 int STATUSBAR_Refresh (TYPE_1__*,int ) ;
 int TRACE (char*) ;

__attribute__((used)) static LRESULT
STATUSBAR_WMPaint (STATUS_INFO *infoPtr, HDC hdc)
{
    PAINTSTRUCT ps;

    TRACE("\n");
    if (hdc) return STATUSBAR_Refresh (infoPtr, hdc);
    hdc = BeginPaint (infoPtr->Self, &ps);
    STATUSBAR_Refresh (infoPtr, hdc);
    EndPaint (infoPtr->Self, &ps);

    return 0;
}
