
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {int rcChevron; int rcChild; int rcCapText; int rcCapImage; int rcGripper; int rcBand; } ;
struct TYPE_8__ {scalar_t__ uNumBands; int hwndSelf; } ;
typedef int RECT ;
typedef TYPE_1__ REBAR_INFO ;
typedef TYPE_2__ REBAR_BAND ;
typedef int POINT ;
typedef int INT ;


 int GetClientRect (int ,int *) ;
 scalar_t__ HIDDENBAND (TYPE_2__*) ;
 scalar_t__ PtInRect (int *,int const) ;
 scalar_t__ RBHT_CAPTION ;
 scalar_t__ RBHT_CHEVRON ;
 scalar_t__ RBHT_CLIENT ;
 scalar_t__ RBHT_GRABBER ;
 scalar_t__ RBHT_NOWHERE ;
 TYPE_2__* REBAR_GetBand (TYPE_1__ const*,scalar_t__) ;
 int TRACE (char*,...) ;
 int translate_rect (TYPE_1__ const*,int *,int *) ;

__attribute__((used)) static void
REBAR_InternalHitTest (const REBAR_INFO *infoPtr, const POINT *lpPt, UINT *pFlags, INT *pBand)
{
    REBAR_BAND *lpBand;
    RECT rect;
    UINT iCount;

    GetClientRect (infoPtr->hwndSelf, &rect);

    *pFlags = RBHT_NOWHERE;
    if (PtInRect (&rect, *lpPt))
    {
 if (infoPtr->uNumBands == 0) {
     *pFlags = RBHT_NOWHERE;
     if (pBand)
  *pBand = -1;
     TRACE("NOWHERE\n");
     return;
 }
 else {

     for (iCount = 0; iCount < infoPtr->uNumBands; iCount++) {
                RECT rcBand;
  lpBand = REBAR_GetBand(infoPtr, iCount);
                translate_rect(infoPtr, &rcBand, &lpBand->rcBand);
                if (HIDDENBAND(lpBand)) continue;
  if (PtInRect (&rcBand, *lpPt)) {
      if (pBand)
   *pBand = iCount;
      if (PtInRect (&lpBand->rcGripper, *lpPt)) {
   *pFlags = RBHT_GRABBER;
   TRACE("ON GRABBER %d\n", iCount);
   return;
      }
      else if (PtInRect (&lpBand->rcCapImage, *lpPt)) {
   *pFlags = RBHT_CAPTION;
   TRACE("ON CAPTION %d\n", iCount);
   return;
      }
      else if (PtInRect (&lpBand->rcCapText, *lpPt)) {
   *pFlags = RBHT_CAPTION;
   TRACE("ON CAPTION %d\n", iCount);
   return;
      }
      else if (PtInRect (&lpBand->rcChild, *lpPt)) {
   *pFlags = RBHT_CLIENT;
   TRACE("ON CLIENT %d\n", iCount);
   return;
      }
      else if (PtInRect (&lpBand->rcChevron, *lpPt)) {
   *pFlags = RBHT_CHEVRON;
   TRACE("ON CHEVRON %d\n", iCount);
   return;
      }
      else {
   *pFlags = RBHT_NOWHERE;
   TRACE("NOWHERE %d\n", iCount);
   return;
      }
  }
     }

     *pFlags = RBHT_NOWHERE;
     if (pBand)
  *pBand = -1;

     TRACE("NOWHERE\n");
     return;
 }
    }
    else {
 *pFlags = RBHT_NOWHERE;
 if (pBand)
     *pBand = -1;
 TRACE("NOWHERE\n");
 return;
    }
}
