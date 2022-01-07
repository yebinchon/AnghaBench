
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
typedef int ngx_err_t ;
struct TYPE_9__ {TYPE_1__* ssl; TYPE_6__* read; TYPE_5__* write; int log; scalar_t__ timedout; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_11__ {void* handler; } ;
struct TYPE_10__ {void* handler; } ;
struct TYPE_8__ {int connection; scalar_t__ no_send_shutdown; scalar_t__ no_wait_shutdown; } ;


 scalar_t__ ERR_peek_error () ;
 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_EVENT ;
 scalar_t__ NGX_OK ;
 int SSL_ERROR_SYSCALL ;
 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int SSL_ERROR_ZERO_RETURN ;
 int SSL_RECEIVED_SHUTDOWN ;
 int SSL_SENT_SHUTDOWN ;
 int SSL_free (int ) ;
 int SSL_get_error (int ,int) ;
 int SSL_get_shutdown (int ) ;
 scalar_t__ SSL_in_init (int ) ;
 int SSL_set_quiet_shutdown (int ,int) ;
 int SSL_set_shutdown (int ,int) ;
 int SSL_shutdown (int ) ;
 int ngx_add_timer (TYPE_6__*,int) ;
 int ngx_errno ;
 scalar_t__ ngx_handle_read_event (TYPE_6__*,int ) ;
 scalar_t__ ngx_handle_write_event (TYPE_5__*,int ) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_ssl_clear_error (int ) ;
 int ngx_ssl_connection_error (TYPE_2__*,int,int ,char*) ;
 void* ngx_ssl_shutdown_handler ;

ngx_int_t
ngx_ssl_shutdown(ngx_connection_t *c)
{
    int n, sslerr, mode;
    ngx_err_t err;

    if (SSL_in_init(c->ssl->connection)) {






        SSL_free(c->ssl->connection);
        c->ssl = ((void*)0);

        return NGX_OK;
    }

    if (c->timedout) {
        mode = SSL_RECEIVED_SHUTDOWN|SSL_SENT_SHUTDOWN;
        SSL_set_quiet_shutdown(c->ssl->connection, 1);

    } else {
        mode = SSL_get_shutdown(c->ssl->connection);

        if (c->ssl->no_wait_shutdown) {
            mode |= SSL_RECEIVED_SHUTDOWN;
        }

        if (c->ssl->no_send_shutdown) {
            mode |= SSL_SENT_SHUTDOWN;
        }

        if (c->ssl->no_wait_shutdown && c->ssl->no_send_shutdown) {
            SSL_set_quiet_shutdown(c->ssl->connection, 1);
        }
    }

    SSL_set_shutdown(c->ssl->connection, mode);

    ngx_ssl_clear_error(c->log);

    n = SSL_shutdown(c->ssl->connection);

    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, 0, "SSL_shutdown: %d", n);

    sslerr = 0;



    if (n != 1 && ERR_peek_error()) {
        sslerr = SSL_get_error(c->ssl->connection, n);

        ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "SSL_get_error: %d", sslerr);
    }

    if (n == 1 || sslerr == 0 || sslerr == SSL_ERROR_ZERO_RETURN) {
        SSL_free(c->ssl->connection);
        c->ssl = ((void*)0);

        return NGX_OK;
    }

    if (sslerr == SSL_ERROR_WANT_READ || sslerr == SSL_ERROR_WANT_WRITE) {
        c->read->handler = ngx_ssl_shutdown_handler;
        c->write->handler = ngx_ssl_shutdown_handler;

        if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
            return NGX_ERROR;
        }

        if (ngx_handle_write_event(c->write, 0) != NGX_OK) {
            return NGX_ERROR;
        }

        if (sslerr == SSL_ERROR_WANT_READ) {
            ngx_add_timer(c->read, 30000);
        }

        return NGX_AGAIN;
    }

    err = (sslerr == SSL_ERROR_SYSCALL) ? ngx_errno : 0;

    ngx_ssl_connection_error(c, sslerr, err, "SSL_shutdown() failed");

    SSL_free(c->ssl->connection);
    c->ssl = ((void*)0);

    return NGX_ERROR;
}
