
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int relay; } ;
typedef TYPE_1__ ngx_rtmp_session_t ;
typedef int ngx_rtmp_relay_ctx_t ;
typedef int ngx_rtmp_header_t ;
typedef int ngx_int_t ;
typedef int ngx_chain_t ;


 int NGX_OK ;
 int * ngx_rtmp_get_module_ctx (TYPE_1__*,int ) ;
 int ngx_rtmp_relay_module ;
 int ngx_rtmp_relay_send_connect (TYPE_1__*) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_relay_handshake_done(ngx_rtmp_session_t *s, ngx_rtmp_header_t *h,
        ngx_chain_t *in)
{
    ngx_rtmp_relay_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_relay_module);
    if (ctx == ((void*)0) || !s->relay) {
        return NGX_OK;
    }

    return ngx_rtmp_relay_send_connect(s);
}
