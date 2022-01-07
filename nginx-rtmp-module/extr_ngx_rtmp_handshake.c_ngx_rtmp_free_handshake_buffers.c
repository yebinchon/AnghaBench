
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * hs_buf; } ;
typedef TYPE_1__ ngx_rtmp_session_t ;
struct TYPE_9__ {TYPE_3__* free_hs; int pool; } ;
typedef TYPE_2__ ngx_rtmp_core_srv_conf_t ;
struct TYPE_10__ {struct TYPE_10__* next; int * buf; } ;
typedef TYPE_3__ ngx_chain_t ;


 TYPE_3__* ngx_alloc_chain_link (int ) ;
 int ngx_rtmp_core_module ;
 TYPE_2__* ngx_rtmp_get_module_srv_conf (TYPE_1__*,int ) ;

void
ngx_rtmp_free_handshake_buffers(ngx_rtmp_session_t *s)
{
    ngx_rtmp_core_srv_conf_t *cscf;
    ngx_chain_t *cl;

    if (s->hs_buf == ((void*)0)) {
        return;
    }
    cscf = ngx_rtmp_get_module_srv_conf(s, ngx_rtmp_core_module);
    cl = ngx_alloc_chain_link(cscf->pool);
    if (cl == ((void*)0)) {
        return;
    }
    cl->buf = s->hs_buf;
    cl->next = cscf->free_hs;
    cscf->free_hs = cl;
    s->hs_buf = ((void*)0);
}
