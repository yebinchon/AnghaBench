
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int loading_pos; int position; } ;
struct TYPE_7__ {scalar_t__ doc_state; int browser_service; TYPE_1__ travellog; } ;
typedef scalar_t__ READYSTATE ;
typedef TYPE_2__ DocHost ;


 int DISPID_DOCUMENTCOMPLETE ;
 int DISPID_NAVIGATECOMPLETE2 ;
 scalar_t__ READYSTATE_COMPLETE ;
 scalar_t__ READYSTATE_LOADING ;
 int WARN (char*) ;
 int notif_complete (TYPE_2__*,int ) ;
 int set_doc_state (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static void update_ready_state(DocHost *This, READYSTATE ready_state)
{
    if(ready_state > READYSTATE_LOADING && This->travellog.loading_pos != -1) {
        WARN("histupdate not notified\n");
        This->travellog.position = This->travellog.loading_pos;
        This->travellog.loading_pos = -1;
    }

    if(ready_state > READYSTATE_LOADING && This->doc_state <= READYSTATE_LOADING && !This->browser_service )
        notif_complete(This, DISPID_NAVIGATECOMPLETE2);

    if(ready_state == READYSTATE_COMPLETE && This->doc_state < READYSTATE_COMPLETE) {
        set_doc_state(This, READYSTATE_COMPLETE);
        if(!This->browser_service)
            notif_complete(This, DISPID_DOCUMENTCOMPLETE);
    }else {
        set_doc_state(This, ready_state);
    }
}
