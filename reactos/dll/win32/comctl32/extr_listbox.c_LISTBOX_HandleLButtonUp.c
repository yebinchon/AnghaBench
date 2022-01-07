
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ self; int style; scalar_t__ nb_items; scalar_t__ captured; } ;
typedef int LRESULT ;
typedef TYPE_1__ LB_DESCR ;


 scalar_t__ FALSE ;
 scalar_t__ GetCapture () ;
 int KillSystemTimer (scalar_t__,int ) ;
 int LBN_SELCHANGE ;
 int LBS_NOTIFY ;
 int LB_TIMER_ID ;
 scalar_t__ LB_TIMER_NONE ;
 scalar_t__ LISTBOX_Timer ;
 int ReleaseCapture () ;
 int SEND_NOTIFICATION (TYPE_1__*,int ) ;

__attribute__((used)) static LRESULT LISTBOX_HandleLButtonUp( LB_DESCR *descr )
{
    if (LISTBOX_Timer != LB_TIMER_NONE)
        KillSystemTimer( descr->self, LB_TIMER_ID );
    LISTBOX_Timer = LB_TIMER_NONE;
    if (descr->captured)
    {
        descr->captured = FALSE;
        if (GetCapture() == descr->self) ReleaseCapture();
        if ((descr->style & LBS_NOTIFY) && descr->nb_items)
            SEND_NOTIFICATION( descr, LBN_SELCHANGE );
    }
    return 0;
}
