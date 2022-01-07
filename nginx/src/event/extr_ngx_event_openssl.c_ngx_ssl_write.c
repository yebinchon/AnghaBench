
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
typedef int ssize_t ;
typedef int ngx_err_t ;
struct TYPE_11__ {int sent; TYPE_2__* write; TYPE_1__* ssl; TYPE_7__* read; int log; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_12__ {int ready; int * handler; } ;
struct TYPE_10__ {int error; scalar_t__ ready; } ;
struct TYPE_9__ {int no_wait_shutdown; int no_send_shutdown; int * saved_read_handler; int connection; scalar_t__ in_early; } ;


 int NGX_AGAIN ;
 int NGX_ERROR ;
 int NGX_LOG_DEBUG_EVENT ;
 scalar_t__ NGX_OK ;
 int SSL_ERROR_SYSCALL ;
 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int SSL_get_error (int ,int) ;
 int SSL_write (int ,int *,size_t) ;
 int ngx_errno ;
 scalar_t__ ngx_handle_read_event (TYPE_7__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_post_event (TYPE_7__*,int *) ;
 int ngx_posted_events ;
 int ngx_ssl_clear_error (int ) ;
 int ngx_ssl_connection_error (TYPE_3__*,int,int ,char*) ;
 int * ngx_ssl_read_handler ;
 int ngx_ssl_write_early (TYPE_3__*,int *,size_t) ;

ssize_t
ngx_ssl_write(ngx_connection_t *c, u_char *data, size_t size)
{
    int n, sslerr;
    ngx_err_t err;







    ngx_ssl_clear_error(c->log);

    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, 0, "SSL to write: %uz", size);

    n = SSL_write(c->ssl->connection, data, size);

    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, 0, "SSL_write: %d", n);

    if (n > 0) {

        if (c->ssl->saved_read_handler) {

            c->read->handler = c->ssl->saved_read_handler;
            c->ssl->saved_read_handler = ((void*)0);
            c->read->ready = 1;

            if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
                return NGX_ERROR;
            }

            ngx_post_event(c->read, &ngx_posted_events);
        }

        c->sent += n;

        return n;
    }

    sslerr = SSL_get_error(c->ssl->connection, n);

    err = (sslerr == SSL_ERROR_SYSCALL) ? ngx_errno : 0;

    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, 0, "SSL_get_error: %d", sslerr);

    if (sslerr == SSL_ERROR_WANT_WRITE) {

        if (c->ssl->saved_read_handler) {

            c->read->handler = c->ssl->saved_read_handler;
            c->ssl->saved_read_handler = ((void*)0);
            c->read->ready = 1;

            if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
                return NGX_ERROR;
            }

            ngx_post_event(c->read, &ngx_posted_events);
        }

        c->write->ready = 0;
        return NGX_AGAIN;
    }

    if (sslerr == SSL_ERROR_WANT_READ) {

        ngx_log_debug0(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "SSL_write: want read");

        c->read->ready = 0;

        if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
            return NGX_ERROR;
        }






        if (c->ssl->saved_read_handler == ((void*)0)) {
            c->ssl->saved_read_handler = c->read->handler;
            c->read->handler = ngx_ssl_read_handler;
        }

        return NGX_AGAIN;
    }

    c->ssl->no_wait_shutdown = 1;
    c->ssl->no_send_shutdown = 1;
    c->write->error = 1;

    ngx_ssl_connection_error(c, sslerr, err, "SSL_write() failed");

    return NGX_ERROR;
}
