
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int MarqueePos; int Self; } ;
typedef int RECT ;
typedef TYPE_1__ PROGRESS_INFO ;
typedef int LONG ;
typedef int HTHEME ;
typedef int BOOL ;


 int GWL_STYLE ;
 int GetWindowLongW (int ,int ) ;
 int GetWindowTheme (int ) ;
 int InvalidateRect (int ,int *,int ) ;
 int PBS_SMOOTH ;
 int TRUE ;
 int UpdateWindow (int ) ;
 int get_bar_size (int,int *) ;
 int get_client_rect (int ,int *) ;
 int get_led_gap (TYPE_1__*) ;
 int get_led_size (TYPE_1__*,int,int *) ;

__attribute__((used)) static void PROGRESS_UpdateMarquee (PROGRESS_INFO *infoPtr)
{
    LONG style = GetWindowLongW (infoPtr->Self, GWL_STYLE);
    RECT rect;
    int ledWidth, leds;
    HTHEME theme = GetWindowTheme (infoPtr->Self);
    BOOL smooth = (style & PBS_SMOOTH) && !theme;

    get_client_rect (infoPtr->Self, &rect);

    if (smooth)
        ledWidth = 1;
    else
        ledWidth = get_led_size( infoPtr, style, &rect ) + get_led_gap( infoPtr );

    leds = (get_bar_size( style, &rect ) + ledWidth - 1) /
        ledWidth;


    if (++infoPtr->MarqueePos >= leds)
        infoPtr->MarqueePos = 0;

    InvalidateRect(infoPtr->Self, &rect, TRUE);
    UpdateWindow(infoPtr->Self);
}
