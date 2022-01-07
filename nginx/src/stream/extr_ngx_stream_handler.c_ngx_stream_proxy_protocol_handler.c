
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int u_char ;
typedef int ssize_t ;
typedef int ngx_stream_session_t ;
struct TYPE_16__ {int proxy_protocol_timeout; } ;
typedef TYPE_1__ ngx_stream_core_srv_conf_t ;
struct TYPE_17__ {scalar_t__ timer_set; scalar_t__ ready; scalar_t__ timedout; TYPE_3__* data; } ;
typedef TYPE_2__ ngx_event_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_18__ {int (* recv ) (TYPE_3__*,int *,size_t) ;TYPE_9__* log; int fd; int * data; } ;
typedef TYPE_3__ ngx_connection_t ;
typedef int buf ;
struct TYPE_19__ {char* action; } ;


 int MSG_PEEK ;
 scalar_t__ NGX_EAGAIN ;
 int NGX_ETIMEDOUT ;
 int NGX_LOG_DEBUG_STREAM ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int NGX_PROXY_PROTOCOL_MAX_HEADER ;
 int NGX_STREAM_BAD_REQUEST ;
 int NGX_STREAM_INTERNAL_SERVER_ERROR ;
 int NGX_STREAM_OK ;
 int ngx_add_timer (TYPE_2__*,int ) ;
 int ngx_connection_error (TYPE_3__*,scalar_t__,char*) ;
 int ngx_del_timer (TYPE_2__*) ;
 scalar_t__ ngx_handle_read_event (TYPE_2__*,int ) ;
 int ngx_log_debug0 (int ,TYPE_9__*,int ,char*) ;
 int ngx_log_debug1 (int ,TYPE_9__*,int ,char*,int) ;
 int ngx_log_error (int ,TYPE_9__*,int ,char*) ;
 int * ngx_proxy_protocol_read (TYPE_3__*,int *,int *) ;
 scalar_t__ ngx_socket_errno ;
 int ngx_stream_core_module ;
 int ngx_stream_finalize_session (int *,int ) ;
 TYPE_1__* ngx_stream_get_module_srv_conf (int *,int ) ;
 int ngx_stream_session_handler (TYPE_2__*) ;
 int recv (int ,char*,int,int ) ;
 int stub1 (TYPE_3__*,int *,size_t) ;

__attribute__((used)) static void
ngx_stream_proxy_protocol_handler(ngx_event_t *rev)
{
    u_char *p, buf[NGX_PROXY_PROTOCOL_MAX_HEADER];
    size_t size;
    ssize_t n;
    ngx_err_t err;
    ngx_connection_t *c;
    ngx_stream_session_t *s;
    ngx_stream_core_srv_conf_t *cscf;

    c = rev->data;
    s = c->data;

    ngx_log_debug0(NGX_LOG_DEBUG_STREAM, c->log, 0,
                   "stream PROXY protocol handler");

    if (rev->timedout) {
        ngx_log_error(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT, "client timed out");
        ngx_stream_finalize_session(s, NGX_STREAM_OK);
        return;
    }

    n = recv(c->fd, (char *) buf, sizeof(buf), MSG_PEEK);

    err = ngx_socket_errno;

    ngx_log_debug1(NGX_LOG_DEBUG_STREAM, c->log, 0, "recv(): %z", n);

    if (n == -1) {
        if (err == NGX_EAGAIN) {
            rev->ready = 0;

            if (!rev->timer_set) {
                cscf = ngx_stream_get_module_srv_conf(s,
                                                      ngx_stream_core_module);

                ngx_add_timer(rev, cscf->proxy_protocol_timeout);
            }

            if (ngx_handle_read_event(rev, 0) != NGX_OK) {
                ngx_stream_finalize_session(s,
                                            NGX_STREAM_INTERNAL_SERVER_ERROR);
            }

            return;
        }

        ngx_connection_error(c, err, "recv() failed");

        ngx_stream_finalize_session(s, NGX_STREAM_OK);
        return;
    }

    if (rev->timer_set) {
        ngx_del_timer(rev);
    }

    p = ngx_proxy_protocol_read(c, buf, buf + n);

    if (p == ((void*)0)) {
        ngx_stream_finalize_session(s, NGX_STREAM_BAD_REQUEST);
        return;
    }

    size = p - buf;

    if (c->recv(c, buf, size) != (ssize_t) size) {
        ngx_stream_finalize_session(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        return;
    }

    c->log->action = "initializing session";

    ngx_stream_session_handler(rev);
}
