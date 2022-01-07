
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
typedef int ngx_rtmp_hls_ctx_t ;
struct TYPE_12__ {int hls; } ;
typedef TYPE_3__ ngx_rtmp_hls_app_conf_t ;
typedef int ngx_rtmp_close_stream_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int next_close_stream (TYPE_2__*,int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 TYPE_3__* ngx_rtmp_get_module_app_conf (TYPE_2__*,int ) ;
 int * ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_rtmp_hls_close_fragment (TYPE_2__*) ;
 int ngx_rtmp_hls_module ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_hls_close_stream(ngx_rtmp_session_t *s, ngx_rtmp_close_stream_t *v)
{
    ngx_rtmp_hls_app_conf_t *hacf;
    ngx_rtmp_hls_ctx_t *ctx;

    hacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_hls_module);

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_hls_module);

    if (hacf == ((void*)0) || !hacf->hls || ctx == ((void*)0)) {
        goto next;
    }

    ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "hls: close stream");

    ngx_rtmp_hls_close_fragment(s);

next:
    return next_close_stream(s, v);
}
