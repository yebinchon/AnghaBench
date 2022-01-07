
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int event ;
struct TYPE_6__ {int vimWindow; } ;
struct TYPE_5__ {int rid; int event_state; int event_f; } ;
typedef TYPE_1__ PhWindowEvent_t ;


 int Ph_WM_EVSTATE_HIDE ;
 int Ph_WM_HIDE ;
 int PtForwardWindowEvent (TYPE_1__*) ;
 int PtWidgetRid (int ) ;
 TYPE_3__ gui ;
 int memset (TYPE_1__*,int ,int) ;

void
gui_mch_iconify(void)
{
    PhWindowEvent_t event;

    memset(&event, 0, sizeof (event));
    event.event_f = Ph_WM_HIDE;
    event.event_state = Ph_WM_EVSTATE_HIDE;
    event.rid = PtWidgetRid(gui.vimWindow);
    PtForwardWindowEvent(&event);
}
