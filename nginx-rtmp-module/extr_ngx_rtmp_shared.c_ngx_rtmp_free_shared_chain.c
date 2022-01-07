
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* free; } ;
typedef TYPE_1__ ngx_rtmp_core_srv_conf_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_2__ ngx_chain_t ;


 scalar_t__ ngx_rtmp_ref_put (TYPE_2__*) ;

void
ngx_rtmp_free_shared_chain(ngx_rtmp_core_srv_conf_t *cscf, ngx_chain_t *in)
{
    ngx_chain_t *cl;

    if (ngx_rtmp_ref_put(in)) {
        return;
    }

    for (cl = in; ; cl = cl->next) {
        if (cl->next == ((void*)0)) {
            cl->next = cscf->free;
            cscf->free = in;
            return;
        }
    }
}
