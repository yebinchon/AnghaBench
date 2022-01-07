
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Self; } ;
typedef TYPE_1__ PROGRESS_INFO ;
typedef scalar_t__ HTHEME ;


 int GetThemeInt (scalar_t__,int ,int ,int ,int*) ;
 scalar_t__ GetWindowTheme (int ) ;
 int LED_GAP ;
 scalar_t__ SUCCEEDED (int ) ;
 int TMT_PROGRESSSPACESIZE ;

__attribute__((used)) static inline int get_led_gap ( const PROGRESS_INFO *infoPtr )
{
    HTHEME theme = GetWindowTheme (infoPtr->Self);
    if (theme)
    {
        int spaceSize;
        if (SUCCEEDED( GetThemeInt( theme, 0, 0, TMT_PROGRESSSPACESIZE, &spaceSize )))
            return spaceSize;
    }

    return LED_GAP;
}
