
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_9__ {int epoch; int start_timestamp; } ;
typedef TYPE_3__ ngx_rtmp_mp4_ctx_t ;
typedef int ngx_int_t ;
typedef int ngx_file_t ;
struct TYPE_7__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int NGX_OK ;
 int ngx_current_msec ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 TYPE_3__* ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_rtmp_mp4_module ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_start(ngx_rtmp_session_t *s, ngx_file_t *f)
{
    ngx_rtmp_mp4_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_mp4_module);

    if (ctx == ((void*)0)) {
        return NGX_OK;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "mp4: start timestamp=%uD", ctx->start_timestamp);

    ctx->epoch = ngx_current_msec;

    return NGX_OK;
}
