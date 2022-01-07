
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ fErase; int rcPaint; } ;
struct TYPE_8__ {int hwndSelf; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef TYPE_2__ PAINTSTRUCT ;
typedef int LRESULT ;
typedef scalar_t__ HDC ;


 scalar_t__ BeginPaint (int ,TYPE_2__*) ;
 int EndPaint (int ,TYPE_2__*) ;
 int REBAR_EraseBkGnd (TYPE_1__ const*,scalar_t__) ;
 int REBAR_Refresh (TYPE_1__ const*,scalar_t__) ;
 int TRACE (char*,...) ;
 int wine_dbgstr_rect (int *) ;

__attribute__((used)) static LRESULT
REBAR_Paint (const REBAR_INFO *infoPtr, HDC hdc)
{
    if (hdc) {
        TRACE("painting\n");



        REBAR_Refresh (infoPtr, hdc);
    } else {
        PAINTSTRUCT ps;
        hdc = BeginPaint (infoPtr->hwndSelf, &ps);
        TRACE("painting (%s)\n", wine_dbgstr_rect(&ps.rcPaint));
        if (ps.fErase) {

            REBAR_EraseBkGnd (infoPtr, hdc);
        }
        REBAR_Refresh (infoPtr, hdc);
 EndPaint (infoPtr->hwndSelf, &ps);
    }

    return 0;
}
