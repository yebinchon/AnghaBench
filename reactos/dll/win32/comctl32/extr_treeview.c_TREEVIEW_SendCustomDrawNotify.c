
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int hdr; scalar_t__ lItemlParam; scalar_t__ uItemState; scalar_t__ dwItemSpec; int rc; int hdc; int dwDrawStage; } ;
struct TYPE_7__ {TYPE_3__ nmcd; scalar_t__ iLevel; int clrTextBk; int clrText; } ;
struct TYPE_6__ {int clrBk; int clrText; } ;
typedef TYPE_1__ TREEVIEW_INFO ;
typedef int RECT ;
typedef TYPE_2__ NMTVCUSTOMDRAW ;
typedef TYPE_3__ NMCUSTOMDRAW ;
typedef int HDC ;
typedef int DWORD ;
typedef int BOOL ;


 int NM_CUSTOMDRAW ;
 int TRACE (char*,int ,int ) ;
 int TREEVIEW_SendRealNotify (TYPE_1__ const*,int ,int *) ;

__attribute__((used)) static BOOL
TREEVIEW_SendCustomDrawNotify(const TREEVIEW_INFO *infoPtr, DWORD dwDrawStage,
         HDC hdc, RECT rc)
{
    NMTVCUSTOMDRAW nmcdhdr;
    NMCUSTOMDRAW *nmcd;

    TRACE("drawstage:0x%x hdc:%p\n", dwDrawStage, hdc);

    nmcd = &nmcdhdr.nmcd;
    nmcd->dwDrawStage = dwDrawStage;
    nmcd->hdc = hdc;
    nmcd->rc = rc;
    nmcd->dwItemSpec = 0;
    nmcd->uItemState = 0;
    nmcd->lItemlParam = 0;
    nmcdhdr.clrText = infoPtr->clrText;
    nmcdhdr.clrTextBk = infoPtr->clrBk;
    nmcdhdr.iLevel = 0;

    return TREEVIEW_SendRealNotify(infoPtr, NM_CUSTOMDRAW, &nmcdhdr.nmcd.hdr);
}
