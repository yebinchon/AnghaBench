
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_rtmp_session_t ;
struct TYPE_6__ {TYPE_1__* pc; struct TYPE_6__* next; } ;
typedef TYPE_2__ ngx_rtmp_netcall_session_t ;
struct TYPE_7__ {TYPE_2__* cs; } ;
typedef TYPE_3__ ngx_rtmp_netcall_ctx_t ;
typedef int ngx_rtmp_header_t ;
typedef int ngx_int_t ;
typedef int ngx_chain_t ;
struct TYPE_5__ {int connection; } ;


 int NGX_OK ;
 TYPE_3__* ngx_rtmp_get_module_ctx (int *,int ) ;
 int ngx_rtmp_netcall_detach (int ) ;
 int ngx_rtmp_netcall_module ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_netcall_disconnect(ngx_rtmp_session_t *s, ngx_rtmp_header_t *h,
        ngx_chain_t *in)
{
    ngx_rtmp_netcall_ctx_t *ctx;
    ngx_rtmp_netcall_session_t *cs;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_netcall_module);

    if (ctx) {
        for (cs = ctx->cs; cs; cs = cs->next) {
            ngx_rtmp_netcall_detach(cs->pc->connection);
        }
    }

    return NGX_OK;
}
