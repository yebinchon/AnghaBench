
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
typedef int ngx_rtmp_flv_ctx_t ;
typedef int ngx_int_t ;
typedef int ngx_file_t ;
struct TYPE_5__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int NGX_OK ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_rtmp_flv_module ;
 int * ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_flv_stop(ngx_rtmp_session_t *s, ngx_file_t *f)
{
    ngx_rtmp_flv_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_flv_module);

    if (ctx == ((void*)0)) {
        return NGX_OK;
    }

    ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                  "flv: stop");

    return NGX_OK;
}
