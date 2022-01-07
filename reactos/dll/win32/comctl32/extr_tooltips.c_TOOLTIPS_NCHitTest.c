
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_5__ {int nTrackTool; int nTool; int uNumTools; int hwndSelf; TYPE_1__* tools; scalar_t__ bTrackActive; } ;
struct TYPE_4__ {int uFlags; } ;
typedef TYPE_2__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int INT ;


 int DefWindowProcW (int ,int ,int ,int ) ;
 int HTTRANSPARENT ;
 int TRACE (char*,...) ;
 int TTF_TRANSPARENT ;
 int WM_NCHITTEST ;

__attribute__((used)) static LRESULT
TOOLTIPS_NCHitTest (const TOOLTIPS_INFO *infoPtr, WPARAM wParam, LPARAM lParam)
{
    INT nTool = (infoPtr->bTrackActive) ? infoPtr->nTrackTool : infoPtr->nTool;

    TRACE(" nTool=%d\n", nTool);

    if ((nTool > -1) && (nTool < infoPtr->uNumTools)) {
 if (infoPtr->tools[nTool].uFlags & TTF_TRANSPARENT) {
     TRACE("-- in transparent mode\n");
     return HTTRANSPARENT;
 }
    }

    return DefWindowProcW (infoPtr->hwndSelf, WM_NCHITTEST, wParam, lParam);
}
