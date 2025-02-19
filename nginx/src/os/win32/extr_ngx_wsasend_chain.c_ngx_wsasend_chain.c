
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


typedef scalar_t__ u_long ;
typedef int u_char ;
typedef scalar_t__ off_t ;
struct TYPE_17__ {int error; scalar_t__ ready; } ;
typedef TYPE_1__ ngx_event_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_18__ {int sent; int fd; int log; int pool; TYPE_1__* write; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_19__ {TYPE_12__* buf; struct TYPE_19__* next; } ;
typedef TYPE_3__ ngx_chain_t ;
struct TYPE_20__ {int size; int nalloc; scalar_t__ nelts; int * elts; int pool; } ;
typedef TYPE_4__ ngx_array_t ;
typedef int WSABUF ;
struct TYPE_21__ {int len; char* buf; } ;
struct TYPE_16__ {int * last; int * pos; } ;
typedef TYPE_5__* LPWSABUF ;


 TYPE_3__* NGX_CHAIN_ERROR ;
 int NGX_LOG_DEBUG_EVENT ;
 scalar_t__ NGX_MAX_UINT32_VALUE ;
 int NGX_WSABUFS ;
 scalar_t__ WSAEWOULDBLOCK ;
 int WSASend (int ,int *,scalar_t__,scalar_t__*,int ,int *,int *) ;
 TYPE_5__* ngx_array_push (TYPE_4__*) ;
 scalar_t__ ngx_buf_special (TYPE_12__*) ;
 TYPE_3__* ngx_chain_update_sent (TYPE_3__*,scalar_t__) ;
 int ngx_connection_error (TYPE_2__*,scalar_t__,char*) ;
 scalar_t__ ngx_errno ;
 int ngx_log_debug0 (int ,int ,scalar_t__,char*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,scalar_t__) ;
 scalar_t__ ngx_max_wsabufs ;
 scalar_t__ ngx_pagesize ;

ngx_chain_t *
ngx_wsasend_chain(ngx_connection_t *c, ngx_chain_t *in, off_t limit)
{
    int rc;
    u_char *prev;
    u_long size, sent, send, prev_send;
    ngx_err_t err;
    ngx_event_t *wev;
    ngx_array_t vec;
    ngx_chain_t *cl;
    LPWSABUF wsabuf;
    WSABUF wsabufs[NGX_WSABUFS];

    wev = c->write;

    if (!wev->ready) {
        return in;
    }



    if (limit == 0 || limit > (off_t) (NGX_MAX_UINT32_VALUE - ngx_pagesize)) {
        limit = NGX_MAX_UINT32_VALUE - ngx_pagesize;
    }

    send = 0;






    vec.elts = wsabufs;
    vec.size = sizeof(WSABUF);
    vec.nalloc = NGX_WSABUFS;
    vec.pool = c->pool;

    for ( ;; ) {
        prev = ((void*)0);
        wsabuf = ((void*)0);
        prev_send = send;

        vec.nelts = 0;



        for (cl = in;
             cl && vec.nelts < ngx_max_wsabufs && send < limit;
             cl = cl->next)
        {
            if (ngx_buf_special(cl->buf)) {
                continue;
            }

            size = cl->buf->last - cl->buf->pos;

            if (send + size > limit) {
                size = (u_long) (limit - send);
            }

            if (prev == cl->buf->pos) {
                wsabuf->len += cl->buf->last - cl->buf->pos;

            } else {
                wsabuf = ngx_array_push(&vec);
                if (wsabuf == ((void*)0)) {
                    return NGX_CHAIN_ERROR;
                }

                wsabuf->buf = (char *) cl->buf->pos;
                wsabuf->len = cl->buf->last - cl->buf->pos;
            }

            prev = cl->buf->last;
            send += size;
        }

        sent = 0;

        rc = WSASend(c->fd, vec.elts, vec.nelts, &sent, 0, ((void*)0), ((void*)0));

        if (rc == -1) {
            err = ngx_errno;

            if (err == WSAEWOULDBLOCK) {
                ngx_log_debug0(NGX_LOG_DEBUG_EVENT, c->log, err,
                               "WSASend() not ready");

            } else {
                wev->error = 1;
                ngx_connection_error(c, err, "WSASend() failed");
                return NGX_CHAIN_ERROR;
            }
        }

        ngx_log_debug2(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "WSASend: fd:%d, s:%ul", c->fd, sent);

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
