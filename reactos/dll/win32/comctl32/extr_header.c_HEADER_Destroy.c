
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndSelf; } ;
typedef int LRESULT ;
typedef int HTHEME ;
typedef TYPE_1__ HEADER_INFO ;


 int CloseThemeData (int ) ;
 int GetWindowTheme (int ) ;

__attribute__((used)) static LRESULT
HEADER_Destroy (HEADER_INFO *infoPtr)
{
    HTHEME theme = GetWindowTheme(infoPtr->hwndSelf);
    CloseThemeData(theme);
    return 0;
}
