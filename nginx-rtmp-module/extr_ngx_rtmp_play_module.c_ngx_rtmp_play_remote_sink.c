
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_13__ {TYPE_2__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_11__ {int fd; } ;
struct TYPE_14__ {int ncrs; int nheader; int nbody; TYPE_1__ file; } ;
typedef TYPE_4__ ngx_rtmp_play_ctx_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_15__ {TYPE_6__* buf; struct TYPE_15__* next; } ;
typedef TYPE_5__ ngx_chain_t ;
struct TYPE_16__ {int* pos; int* last; } ;
typedef TYPE_6__ ngx_buf_t ;
struct TYPE_12__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int ngx_errno ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 TYPE_4__* ngx_rtmp_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_rtmp_play_module ;
 scalar_t__ ngx_write_fd (int ,int*,int) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_play_remote_sink(ngx_rtmp_session_t *s, ngx_chain_t *in)
{
    ngx_rtmp_play_ctx_t *ctx;
    ngx_buf_t *b;
    ngx_int_t rc;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_play_module);


    while (in && ctx->ncrs != 2) {
        b = in->buf;

        for (; b->pos != b->last && ctx->ncrs != 2; ++b->pos) {
            switch (*b->pos) {
                case '\n':
                    ++ctx->ncrs;
                case '\r':
                    break;
                default:
                    ctx->ncrs = 0;
            }

            if (++ctx->nheader == 10 && *b->pos != (u_char) '2') {
                ngx_log_error(NGX_LOG_INFO, s->connection->log, 0,
                              "play: remote HTTP response code: %cxx",
                              *b->pos);
                return NGX_ERROR;
            }
        }

        if (b->pos == b->last) {
            in = in->next;
        }
    }


    for (; in; in = in->next) {
        b = in->buf;

        if (b->pos == b->last) {
            continue;
        }

        rc = ngx_write_fd(ctx->file.fd, b->pos, b->last - b->pos);

        if (rc == NGX_ERROR) {
            ngx_log_error(NGX_LOG_INFO, s->connection->log, ngx_errno,
                          "play: error writing to temp file");
            return NGX_ERROR;
        }

        ctx->nbody += rc;
    }

    return NGX_OK;
}
