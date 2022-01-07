
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndSelf; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LRESULT ;
typedef int HTHEME ;


 int CloseThemeData (int ) ;
 int GetWindowTheme (int ) ;
 int OpenThemeData (int ,int ) ;
 int themeClass ;

__attribute__((used)) static LRESULT theme_changed (const TRACKBAR_INFO* infoPtr)
{
    HTHEME theme = GetWindowTheme (infoPtr->hwndSelf);
    CloseThemeData (theme);
    OpenThemeData (infoPtr->hwndSelf, themeClass);
    return 0;
}
