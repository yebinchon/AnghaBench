
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct iovec {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
struct TYPE_19__ {int nalloc; scalar_t__ size; struct iovec* iovs; } ;
typedef TYPE_2__ ngx_iovec_t ;
struct TYPE_20__ {int error; scalar_t__ ready; int kq_errno; scalar_t__ pending_eof; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_21__ {int sent; int log; TYPE_3__* write; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_22__ {TYPE_1__* buf; } ;
typedef TYPE_5__ ngx_chain_t ;
struct TYPE_18__ {int file_last; int file_pos; int file; int last; int pos; int start; scalar_t__ in_file; int recycled; int temporary; } ;


 scalar_t__ NGX_AGAIN ;
 TYPE_5__* NGX_CHAIN_ERROR ;
 scalar_t__ NGX_ERROR ;
 int NGX_IOVS_PREALLOCATE ;
 int NGX_LOG_ALERT ;
 scalar_t__ NGX_MAX_SIZE_T_VALUE ;
 int NGX_USE_KQUEUE_EVENT ;
 TYPE_5__* ngx_chain_update_sent (TYPE_5__*,scalar_t__) ;
 int ngx_connection_error (TYPE_4__*,int ,char*) ;
 int ngx_debug_point () ;
 int ngx_event_flags ;
 int ngx_log_error (int ,int ,int ,char*,int ,int ,scalar_t__,int ,int ,int ,int ,int ,int ) ;
 TYPE_5__* ngx_output_chain_to_iovec (TYPE_2__*,TYPE_5__*,scalar_t__,int ) ;
 scalar_t__ ngx_pagesize ;
 scalar_t__ ngx_writev (TYPE_4__*,TYPE_2__*) ;

ngx_chain_t *
ngx_writev_chain(ngx_connection_t *c, ngx_chain_t *in, off_t limit)
{
    ssize_t n, sent;
    off_t send, prev_send;
    ngx_chain_t *cl;
    ngx_event_t *wev;
    ngx_iovec_t vec;
    struct iovec iovs[NGX_IOVS_PREALLOCATE];

    wev = c->write;

    if (!wev->ready) {
        return in;
    }
    if (limit == 0 || limit > (off_t) (NGX_MAX_SIZE_T_VALUE - ngx_pagesize)) {
        limit = NGX_MAX_SIZE_T_VALUE - ngx_pagesize;
    }

    send = 0;

    vec.iovs = iovs;
    vec.nalloc = NGX_IOVS_PREALLOCATE;

    for ( ;; ) {
        prev_send = send;



        cl = ngx_output_chain_to_iovec(&vec, in, limit - send, c->log);

        if (cl == NGX_CHAIN_ERROR) {
            return NGX_CHAIN_ERROR;
        }

        if (cl && cl->buf->in_file) {
            ngx_log_error(NGX_LOG_ALERT, c->log, 0,
                          "file buf in writev "
                          "t:%d r:%d f:%d %p %p-%p %p %O-%O",
                          cl->buf->temporary,
                          cl->buf->recycled,
                          cl->buf->in_file,
                          cl->buf->start,
                          cl->buf->pos,
                          cl->buf->last,
                          cl->buf->file,
                          cl->buf->file_pos,
                          cl->buf->file_last);

            ngx_debug_point();

            return NGX_CHAIN_ERROR;
        }

        send += vec.size;

        n = ngx_writev(c, &vec);

        if (n == NGX_ERROR) {
            return NGX_CHAIN_ERROR;
        }

        sent = (n == NGX_AGAIN) ? 0 : n;

        c->sent += sent;

        in = ngx_chain_update_sent(in, sent);

        if (send - prev_send != sent) {
            wev->ready = 0;
            return in;
        }

        if (send >= limit || in == ((void*)0)) {
            return in;
        }
    }
}
