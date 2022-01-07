
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int info ;
struct TYPE_7__ {int style; scalar_t__ horz_extent; scalar_t__ horz_pos; scalar_t__ width; int self; } ;
struct TYPE_6__ {int cbSize; scalar_t__ nMax; int fMask; scalar_t__ nMin; } ;
typedef TYPE_1__ SCROLLINFO ;
typedef int LRESULT ;
typedef TYPE_2__ LB_DESCR ;
typedef scalar_t__ INT ;


 int LBS_DISABLENOSCROLL ;
 int LBS_MULTICOLUMN ;
 int LB_OKAY ;
 int LISTBOX_SetHorizontalPos (TYPE_2__*,scalar_t__) ;
 int SB_HORZ ;
 int SIF_DISABLENOSCROLL ;
 int SIF_RANGE ;
 int SetScrollInfo (int ,int ,TYPE_1__*,int ) ;
 int TRACE (char*,int ,scalar_t__) ;
 int TRUE ;
 int WS_HSCROLL ;

__attribute__((used)) static LRESULT LISTBOX_SetHorizontalExtent( LB_DESCR *descr, INT extent )
{
    if (descr->style & LBS_MULTICOLUMN)
        return LB_OKAY;
    if (extent == descr->horz_extent) return LB_OKAY;
    TRACE("[%p]: new horz extent = %d\n", descr->self, extent );
    descr->horz_extent = extent;
    if (descr->style & WS_HSCROLL) {
        SCROLLINFO info;
        info.cbSize = sizeof(info);
        info.nMin = 0;
        info.nMax = descr->horz_extent ? descr->horz_extent - 1 : 0;
        info.fMask = SIF_RANGE;
        if (descr->style & LBS_DISABLENOSCROLL)
            info.fMask |= SIF_DISABLENOSCROLL;
        SetScrollInfo( descr->self, SB_HORZ, &info, TRUE );
    }
    if (descr->horz_pos > extent - descr->width)
        LISTBOX_SetHorizontalPos( descr, extent - descr->width );
    return LB_OKAY;
}
