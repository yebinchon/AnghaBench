
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REBAR_INFO ;


 int HIDDENBAND (int ) ;
 int REBAR_GetBand (int const*,int) ;

__attribute__((used)) static int prev_visible(const REBAR_INFO *infoPtr, int i)
{
    int n;
    for (n = i - 1; n >= 0; n--)
        if (!HIDDENBAND(REBAR_GetBand(infoPtr, n)))
            break;
    return n;
}
