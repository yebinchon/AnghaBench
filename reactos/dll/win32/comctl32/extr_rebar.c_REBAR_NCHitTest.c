
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_11__ {short x; short y; } ;
struct TYPE_12__ {scalar_t__ dwHitInfo; TYPE_2__ pt; scalar_t__ dwItemData; int dwItemSpec; } ;
struct TYPE_10__ {int hwndSelf; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef TYPE_2__ POINT ;
typedef TYPE_3__ NMMOUSE ;
typedef int NMHDR ;
typedef scalar_t__ LRESULT ;
typedef int LPARAM ;
typedef scalar_t__ INT ;


 scalar_t__ HIWORD (int ) ;
 scalar_t__ HTCLIENT ;
 scalar_t__ LOWORD (int ) ;
 int NM_NCHITTEST ;
 int REBAR_InternalHitTest (TYPE_1__ const*,TYPE_2__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ REBAR_Notify (int *,TYPE_1__ const*,int ) ;
 int ScreenToClient (int ,TYPE_2__*) ;
 int TRACE (char*,scalar_t__,scalar_t__) ;
 scalar_t__ wine_dbgstr_point (TYPE_2__*) ;

__attribute__((used)) static LRESULT
REBAR_NCHitTest (const REBAR_INFO *infoPtr, LPARAM lParam)
{
    NMMOUSE nmmouse;
    POINT clpt;
    INT i;
    UINT scrap;
    LRESULT ret = HTCLIENT;
    clpt.x = (short)LOWORD(lParam);
    clpt.y = (short)HIWORD(lParam);
    ScreenToClient (infoPtr->hwndSelf, &clpt);
    REBAR_InternalHitTest (infoPtr, &clpt, &scrap,
      (INT *)&nmmouse.dwItemSpec);
    nmmouse.dwItemData = 0;
    nmmouse.pt = clpt;



    nmmouse.dwHitInfo = 0;

    if ((i = REBAR_Notify((NMHDR *) &nmmouse, infoPtr, NM_NCHITTEST))) {
 TRACE("notify changed return value from %ld to %d\n",
       ret, i);
 ret = (LRESULT) i;
    }
    TRACE("returning %ld, client point %s\n", ret, wine_dbgstr_point(&clpt));
    return ret;
}
