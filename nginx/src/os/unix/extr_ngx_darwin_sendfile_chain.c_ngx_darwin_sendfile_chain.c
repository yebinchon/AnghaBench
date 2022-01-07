
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct sf_hdtr {scalar_t__ hdr_cnt; scalar_t__ trl_cnt; struct iovec* trailers; struct iovec* headers; } ;
struct iovec {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
typedef int ngx_uint_t ;
struct TYPE_23__ {int nalloc; scalar_t__ size; scalar_t__ count; struct iovec* iovs; } ;
typedef TYPE_3__ ngx_iovec_t ;
struct TYPE_24__ {int kq_errno; int error; scalar_t__ ready; scalar_t__ pending_eof; } ;
typedef TYPE_4__ ngx_event_t ;
typedef int ngx_err_t ;
struct TYPE_25__ {int sent; int log; int fd; TYPE_4__* write; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_26__ {TYPE_7__* buf; } ;
typedef TYPE_6__ ngx_chain_t ;
struct TYPE_27__ {int file_pos; TYPE_2__* file; scalar_t__ in_file; } ;
typedef TYPE_7__ ngx_buf_t ;
struct TYPE_21__ {int data; } ;
struct TYPE_22__ {TYPE_1__ name; int fd; } ;


 scalar_t__ NGX_AGAIN ;
 TYPE_6__* NGX_CHAIN_ERROR ;


 scalar_t__ NGX_ERROR ;
 int NGX_IOVS_PREALLOCATE ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 scalar_t__ NGX_MAX_SIZE_T_VALUE ;
 int NGX_USE_KQUEUE_EVENT ;
 scalar_t__ ngx_chain_coalesce_file (TYPE_6__**,scalar_t__) ;
 TYPE_6__* ngx_chain_update_sent (TYPE_6__*,scalar_t__) ;
 int ngx_connection_error (TYPE_5__*,int,char*) ;
 int ngx_errno ;
 int ngx_event_flags ;
 int ngx_log_debug1 (int ,int ,int,char*,scalar_t__) ;
 int ngx_log_debug3 (int ,int ,int ,char*,int ,scalar_t__,scalar_t__) ;
 int ngx_log_debug4 (int ,int ,int ,char*,int,int ,scalar_t__,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;
 TYPE_6__* ngx_output_chain_to_iovec (TYPE_3__*,TYPE_6__*,scalar_t__,int ) ;
 scalar_t__ ngx_pagesize ;
 scalar_t__ ngx_writev (TYPE_5__*,TYPE_3__*) ;
 int sendfile (int ,int ,int ,scalar_t__*,struct sf_hdtr*,int ) ;

ngx_chain_t *
ngx_darwin_sendfile_chain(ngx_connection_t *c, ngx_chain_t *in, off_t limit)
{
    int rc;
    off_t send, prev_send, sent;
    off_t file_size;
    ssize_t n;
    ngx_uint_t eintr;
    ngx_err_t err;
    ngx_buf_t *file;
    ngx_event_t *wev;
    ngx_chain_t *cl;
    ngx_iovec_t header, trailer;
    struct sf_hdtr hdtr;
    struct iovec headers[NGX_IOVS_PREALLOCATE];
    struct iovec trailers[NGX_IOVS_PREALLOCATE];

    wev = c->write;

    if (!wev->ready) {
        return in;
    }
    if (limit == 0 || limit > (off_t) (NGX_MAX_SIZE_T_VALUE - ngx_pagesize)) {
        limit = NGX_MAX_SIZE_T_VALUE - ngx_pagesize;
    }

    send = 0;

    header.iovs = headers;
    header.nalloc = NGX_IOVS_PREALLOCATE;

    trailer.iovs = trailers;
    trailer.nalloc = NGX_IOVS_PREALLOCATE;

    for ( ;; ) {
        eintr = 0;
        prev_send = send;



        cl = ngx_output_chain_to_iovec(&header, in, limit - send, c->log);

        if (cl == NGX_CHAIN_ERROR) {
            return NGX_CHAIN_ERROR;
        }

        send += header.size;

        if (cl && cl->buf->in_file && send < limit) {
            file = cl->buf;



            file_size = ngx_chain_coalesce_file(&cl, limit - send);

            send += file_size;

            if (header.count == 0 && send < limit) {





                cl = ngx_output_chain_to_iovec(&trailer, cl, limit - send,
                                               c->log);
                if (cl == NGX_CHAIN_ERROR) {
                    return NGX_CHAIN_ERROR;
                }

                send += trailer.size;

            } else {
                trailer.count = 0;
            }






            hdtr.headers = header.count ? header.iovs : ((void*)0);
            hdtr.hdr_cnt = header.count;
            hdtr.trailers = trailer.count ? trailer.iovs : ((void*)0);
            hdtr.trl_cnt = trailer.count;

            sent = header.size + file_size;

            ngx_log_debug3(NGX_LOG_DEBUG_EVENT, c->log, 0,
                           "sendfile: @%O %O h:%uz",
                           file->file_pos, sent, header.size);

            rc = sendfile(file->file->fd, c->fd, file->file_pos,
                          &sent, &hdtr, 0);

            if (rc == -1) {
                err = ngx_errno;

                switch (err) {
                case 129:
                    break;

                case 128:
                    eintr = 1;
                    break;

                default:
                    wev->error = 1;
                    (void) ngx_connection_error(c, err, "sendfile() failed");
                    return NGX_CHAIN_ERROR;
                }

                ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, err,
                               "sendfile() sent only %O bytes", sent);
            }

            if (rc == 0 && sent == 0) {







                ngx_log_error(NGX_LOG_ALERT, c->log, 0,
                              "sendfile() reported that \"%s\" was truncated",
                              file->file->name.data);

                return NGX_CHAIN_ERROR;
            }

            ngx_log_debug4(NGX_LOG_DEBUG_EVENT, c->log, 0,
                           "sendfile: %d, @%O %O:%O",
                           rc, file->file_pos, sent, file_size + header.size);

        } else {
            n = ngx_writev(c, &header);

            if (n == NGX_ERROR) {
                return NGX_CHAIN_ERROR;
            }

            sent = (n == NGX_AGAIN) ? 0 : n;
        }

        c->sent += sent;

        in = ngx_chain_update_sent(in, sent);

        if (eintr) {
            send = prev_send + sent;
            continue;
        }

        if (send - prev_send != sent) {
            wev->ready = 0;
            return in;
        }

        if (send >= limit || in == ((void*)0)) {
            return in;
        }
    }
}
