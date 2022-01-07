
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cy; int cx; int y; int x; } ;
struct TYPE_5__ {int dwStyle; int hwndSelf; } ;
typedef int RECT ;
typedef TYPE_1__ REBAR_INFO ;
typedef int LRESULT ;
typedef TYPE_2__* LPCREATESTRUCTW ;


 int GetClientRect (int ,int *) ;
 int GetWindowRect (int ,int *) ;
 scalar_t__ OpenThemeData (int ,int ) ;
 int TRACE (char*,...) ;
 scalar_t__ TRACE_ON (int ) ;
 int WS_BORDER ;
 int rebar ;
 int themeClass ;
 int wine_dbgstr_rect (int *) ;

__attribute__((used)) static LRESULT
REBAR_Create (REBAR_INFO *infoPtr, LPCREATESTRUCTW cs)
{
    RECT wnrc1, clrc1;

    if (TRACE_ON(rebar)) {
 GetWindowRect(infoPtr->hwndSelf, &wnrc1);
 GetClientRect(infoPtr->hwndSelf, &clrc1);
        TRACE("window=(%s) client=(%s) cs=(%d,%d %dx%d)\n",
              wine_dbgstr_rect(&wnrc1), wine_dbgstr_rect(&clrc1),
       cs->x, cs->y, cs->cx, cs->cy);
    }

    TRACE("created!\n");

    if (OpenThemeData (infoPtr->hwndSelf, themeClass))
    {

        infoPtr->dwStyle &= ~WS_BORDER;
    }

    return 0;
}
