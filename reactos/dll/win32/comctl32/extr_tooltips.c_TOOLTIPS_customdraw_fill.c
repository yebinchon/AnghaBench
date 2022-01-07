
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {int idFrom; int code; int hwndFrom; } ;
struct TYPE_10__ {int rc; int hdc; TYPE_1__ hdr; } ;
struct TYPE_13__ {TYPE_2__ nmcd; int uDrawFlags; } ;
struct TYPE_12__ {int nCurrentTool; TYPE_3__* tools; int hwndSelf; } ;
struct TYPE_11__ {int uId; } ;
typedef TYPE_3__ TTTOOL_INFO ;
typedef TYPE_4__ TOOLTIPS_INFO ;
typedef int RECT ;
typedef TYPE_5__ NMTTCUSTOMDRAW ;
typedef int HDC ;


 int NM_CUSTOMDRAW ;
 int ZeroMemory (TYPE_5__*,int) ;

__attribute__((used)) static void
TOOLTIPS_customdraw_fill(const TOOLTIPS_INFO *infoPtr, NMTTCUSTOMDRAW *lpnmttcd,
                         HDC hdc, const RECT *rcBounds, UINT uFlags)
{
    ZeroMemory(lpnmttcd, sizeof(NMTTCUSTOMDRAW));
    lpnmttcd->uDrawFlags = uFlags;
    lpnmttcd->nmcd.hdr.hwndFrom = infoPtr->hwndSelf;
    lpnmttcd->nmcd.hdr.code = NM_CUSTOMDRAW;
    if (infoPtr->nCurrentTool != -1) {
        TTTOOL_INFO *toolPtr = &infoPtr->tools[infoPtr->nCurrentTool];
        lpnmttcd->nmcd.hdr.idFrom = toolPtr->uId;
    }
    lpnmttcd->nmcd.hdc = hdc;
    lpnmttcd->nmcd.rc = *rcBounds;

}
