
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* name; int * disp; struct TYPE_9__* next; } ;
typedef TYPE_2__ named_item_t ;
struct TYPE_10__ {int * site; scalar_t__ thread_id; TYPE_1__* ctx; } ;
struct TYPE_8__ {int state; int * global; int * site; int * secmgr; TYPE_2__* named_items; int * host_global; } ;
typedef int SCRIPTSTATE ;
typedef TYPE_3__ JScript ;


 int FIXME (char*) ;
 int IActiveScriptSite_OnStateChange (int *,int) ;
 int IActiveScriptSite_Release (int *) ;
 int IDispatch_Release (int *) ;
 int IInternetHostSecurityManager_Release (int *) ;





 int assert (int ) ;
 int change_state (TYPE_3__*,int) ;
 int clear_script_queue (TYPE_3__*) ;
 int heap_free (TYPE_2__*) ;
 int jsdisp_release (int *) ;

__attribute__((used)) static void decrease_state(JScript *This, SCRIPTSTATE state)
{
    if(This->ctx) {
        switch(This->ctx->state) {
        case 132:
            change_state(This, 131);
            if(state == 131)
                return;

        case 129:
        case 131:
            clear_script_queue(This);

            if(This->ctx->state == 131)
                change_state(This, 130);
            if(state == 130)
                return;

        case 130:
            if(This->ctx->host_global) {
                IDispatch_Release(This->ctx->host_global);
                This->ctx->host_global = ((void*)0);
            }

            if(This->ctx->named_items) {
                named_item_t *iter, *iter2;

                iter = This->ctx->named_items;
                while(iter) {
                    iter2 = iter->next;

                    if(iter->disp)
                        IDispatch_Release(iter->disp);
                    heap_free(iter->name);
                    heap_free(iter);
                    iter = iter2;
                }

                This->ctx->named_items = ((void*)0);
            }

            if(This->ctx->secmgr) {
                IInternetHostSecurityManager_Release(This->ctx->secmgr);
                This->ctx->secmgr = ((void*)0);
            }

            if(This->ctx->site) {
                IActiveScriptSite_Release(This->ctx->site);
                This->ctx->site = ((void*)0);
            }

            if(This->ctx->global) {
                jsdisp_release(This->ctx->global);
                This->ctx->global = ((void*)0);
            }

        case 128:
            change_state(This, state);
            break;
        default:
            assert(0);
        }

        change_state(This, state);
    }else if(state == 128) {
        if(This->site)
            IActiveScriptSite_OnStateChange(This->site, state);
    }else {
        FIXME("NULL ctx\n");
    }

    if(state == 128)
        This->thread_id = 0;

    if(This->site) {
        IActiveScriptSite_Release(This->site);
        This->site = ((void*)0);
    }
}
