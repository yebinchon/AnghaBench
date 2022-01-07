
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_16__ {int start; int name; } ;
typedef TYPE_3__ ngx_rtmp_play_t ;
struct TYPE_17__ {scalar_t__ nbody; scalar_t__ file_id; } ;
typedef TYPE_4__ ngx_rtmp_play_ctx_t ;
typedef int ngx_int_t ;
typedef int ngx_chain_t ;
struct TYPE_14__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_RTMP ;
 scalar_t__ NGX_OK ;
 int next_play (TYPE_2__*,TYPE_3__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 TYPE_4__* ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_rtmp_play_copy_local_file (TYPE_2__*,int ) ;
 int ngx_rtmp_play_module ;
 int ngx_rtmp_play_next_entry (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ ngx_rtmp_play_open (TYPE_2__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_play_remote_handle(ngx_rtmp_session_t *s, void *arg, ngx_chain_t *in)
{
    ngx_rtmp_play_t *v = arg;

    ngx_rtmp_play_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_play_module);

    if (ctx->nbody == 0) {
        return ngx_rtmp_play_next_entry(s, v);
    }

    if (ctx->file_id) {
        ngx_rtmp_play_copy_local_file(s, v->name);
    }

    ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "play: open remote file");

    if (ngx_rtmp_play_open(s, v->start) != NGX_OK) {
        return NGX_ERROR;
    }

    return next_play(s, (ngx_rtmp_play_t *)arg);
}
