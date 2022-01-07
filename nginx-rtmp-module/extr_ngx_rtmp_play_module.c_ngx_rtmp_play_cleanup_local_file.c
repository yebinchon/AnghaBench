
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_9__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_10__ {scalar_t__ file_id; } ;
typedef TYPE_3__ ngx_rtmp_play_ctx_t ;
struct TYPE_8__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int ngx_delete_file (int *) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int *) ;
 TYPE_3__* ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;
 int * ngx_rtmp_play_get_local_file_path (TYPE_2__*) ;
 int ngx_rtmp_play_module ;

__attribute__((used)) static void
ngx_rtmp_play_cleanup_local_file(ngx_rtmp_session_t *s)
{
    ngx_rtmp_play_ctx_t *ctx;
    u_char *path;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_play_module);
    if (ctx == ((void*)0) || ctx->file_id == 0) {
        return;
    }

    path = ngx_rtmp_play_get_local_file_path(s);

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "play: deleting local file '%s'", path);

    ctx->file_id = 0;

    ngx_delete_file(path);
}
