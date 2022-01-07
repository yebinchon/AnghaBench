
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ngx_uint_t ;
struct TYPE_23__ {TYPE_3__* connection; } ;
typedef TYPE_4__ ngx_rtmp_session_t ;
typedef int ngx_rtmp_play_t ;
struct TYPE_24__ {int url; } ;
typedef TYPE_5__ ngx_rtmp_play_entry_t ;
struct TYPE_21__ {scalar_t__ fd; } ;
struct TYPE_25__ {scalar_t__ file_id; TYPE_2__ file; scalar_t__ nbody; scalar_t__ nheader; scalar_t__ ncrs; } ;
typedef TYPE_6__ ngx_rtmp_play_ctx_t ;
struct TYPE_20__ {scalar_t__ len; } ;
struct TYPE_26__ {TYPE_1__ local_path; } ;
typedef TYPE_7__ ngx_rtmp_play_app_conf_t ;
struct TYPE_27__ {int argsize; int * arg; int handle; int sink; int create; int url; } ;
typedef TYPE_8__ ngx_rtmp_netcall_init_t ;
typedef int ngx_int_t ;
typedef scalar_t__ ngx_err_t ;
typedef int ci ;
struct TYPE_22__ {int log; } ;


 scalar_t__ NGX_EEXIST ;
 int NGX_ERROR ;
 scalar_t__ NGX_INVALID_FILE ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_LOG_INFO ;
 scalar_t__ ngx_errno ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,scalar_t__) ;
 int ngx_log_error (int ,int ,scalar_t__,char*) ;
 int ngx_memzero (TYPE_8__*,int) ;
 scalar_t__ ngx_open_tempfile (int *,scalar_t__,int ) ;
 TYPE_7__* ngx_rtmp_get_module_app_conf (TYPE_4__*,int ) ;
 TYPE_6__* ngx_rtmp_get_module_ctx (TYPE_4__*,int ) ;
 int ngx_rtmp_netcall_create (TYPE_4__*,TYPE_8__*) ;
 TYPE_5__* ngx_rtmp_play_get_current_entry (TYPE_4__*) ;
 int * ngx_rtmp_play_get_local_file_path (TYPE_4__*) ;
 int ngx_rtmp_play_module ;
 int ngx_rtmp_play_remote_create ;
 int ngx_rtmp_play_remote_handle ;
 int ngx_rtmp_play_remote_sink ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_play_open_remote(ngx_rtmp_session_t *s, ngx_rtmp_play_t *v)
{
    ngx_rtmp_play_app_conf_t *pacf;
    ngx_rtmp_play_ctx_t *ctx;
    ngx_rtmp_play_entry_t *pe;
    ngx_rtmp_netcall_init_t ci;
    u_char *path;
    ngx_err_t err;
    static ngx_uint_t file_id;

    pacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_play_module);

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_play_module);

    ctx->ncrs = 0;
    ctx->nheader = 0;
    ctx->nbody = 0;

    for ( ;; ) {
        ctx->file_id = ++file_id;


        if (ctx->file_id == 0) {
            continue;
        }

        path = ngx_rtmp_play_get_local_file_path(s);

        ctx->file.fd = ngx_open_tempfile(path, pacf->local_path.len, 0);

        if (pacf->local_path.len == 0) {
            ctx->file_id = 0;
        }

        if (ctx->file.fd != NGX_INVALID_FILE) {
            break;
        }

        err = ngx_errno;

        if (err != NGX_EEXIST) {
            ctx->file_id = 0;

            ngx_log_error(NGX_LOG_INFO, s->connection->log, err,
                          "play: failed to create temp file");

            return NGX_ERROR;
        }
    }

    ngx_log_debug2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "play: temp file '%s' file_id=%ui",
                   path, ctx->file_id);

    pe = ngx_rtmp_play_get_current_entry(s);

    ngx_memzero(&ci, sizeof(ci));

    ci.url = pe->url;
    ci.create = ngx_rtmp_play_remote_create;
    ci.sink = ngx_rtmp_play_remote_sink;
    ci.handle = ngx_rtmp_play_remote_handle;
    ci.arg = v;
    ci.argsize = sizeof(*v);

    return ngx_rtmp_netcall_create(s, &ci);
}
