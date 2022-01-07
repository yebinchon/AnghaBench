
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
typedef int ngx_rtmp_amf_elt_t ;
struct TYPE_9__ {int log; int * link; } ;
typedef TYPE_3__ ngx_rtmp_amf_ctx_t ;
typedef int ngx_int_t ;
typedef int ngx_chain_t ;
typedef int act ;
struct TYPE_7__ {int log; } ;


 int ngx_memzero (TYPE_3__*,int) ;
 int ngx_rtmp_amf_read (TYPE_3__*,int *,size_t) ;

ngx_int_t
ngx_rtmp_receive_amf(ngx_rtmp_session_t *s, ngx_chain_t *in,
        ngx_rtmp_amf_elt_t *elts, size_t nelts)
{
    ngx_rtmp_amf_ctx_t act;

    ngx_memzero(&act, sizeof(act));
    act.link = in;
    act.log = s->connection->log;

    return ngx_rtmp_amf_read(&act, elts, nelts);
}
