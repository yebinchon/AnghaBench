
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwStyle; int orgStyle; int hwndSelf; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef int LRESULT ;
typedef scalar_t__ HTHEME ;


 int CloseThemeData (scalar_t__) ;
 scalar_t__ GetWindowTheme (int ) ;
 scalar_t__ OpenThemeData (int ,int ) ;
 int WS_BORDER ;
 int themeClass ;

__attribute__((used)) static LRESULT theme_changed (REBAR_INFO* infoPtr)
{
    HTHEME theme = GetWindowTheme (infoPtr->hwndSelf);
    CloseThemeData (theme);
    theme = OpenThemeData (infoPtr->hwndSelf, themeClass);


    infoPtr->dwStyle &= ~WS_BORDER;
    infoPtr->dwStyle |= theme ? 0 : (infoPtr->orgStyle & WS_BORDER);
    return 0;
}
