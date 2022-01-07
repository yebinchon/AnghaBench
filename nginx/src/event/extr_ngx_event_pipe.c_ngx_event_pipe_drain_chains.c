
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_7__ {TYPE_3__* free; TYPE_3__* in; TYPE_3__* out; TYPE_3__* busy; } ;
typedef TYPE_2__ ngx_event_pipe_t ;
struct TYPE_8__ {struct TYPE_8__* next; TYPE_1__* buf; } ;
typedef TYPE_3__ ngx_chain_t ;
struct TYPE_6__ {int * shadow; scalar_t__ last_shadow; } ;


 scalar_t__ NGX_ABORT ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_event_pipe_add_free_buf (TYPE_2__*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_event_pipe_drain_chains(ngx_event_pipe_t *p)
{
    ngx_chain_t *cl, *tl;

    for ( ;; ) {
        if (p->busy) {
            cl = p->busy;
            p->busy = ((void*)0);

        } else if (p->out) {
            cl = p->out;
            p->out = ((void*)0);

        } else if (p->in) {
            cl = p->in;
            p->in = ((void*)0);

        } else {
            return NGX_OK;
        }

        while (cl) {
            if (cl->buf->last_shadow) {
                if (ngx_event_pipe_add_free_buf(p, cl->buf->shadow) != NGX_OK) {
                    return NGX_ABORT;
                }

                cl->buf->last_shadow = 0;
            }

            cl->buf->shadow = ((void*)0);
            tl = cl->next;
            cl->next = p->free;
            p->free = cl;
            cl = tl;
        }
    }
}
