
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;


typedef scalar_t__ ngx_int_t ;
typedef int ngx_err_t ;
struct TYPE_17__ {TYPE_9__* read; TYPE_2__* ssl; TYPE_8__* write; int log; int send_chain; int recv_chain; int send; int recv; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_19__ {int eof; int error; void* handler; scalar_t__ ready; } ;
struct TYPE_18__ {void* handler; scalar_t__ ready; } ;
struct TYPE_16__ {int handshaked; int no_wait_shutdown; int no_send_shutdown; TYPE_11__* connection; scalar_t__ try_early_data; } ;
struct TYPE_15__ {int flags; } ;
struct TYPE_14__ {TYPE_1__* s3; } ;


 scalar_t__ ERR_peek_error () ;
 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_EVENT ;
 scalar_t__ NGX_OK ;
 int SSL3_FLAGS_NO_RENEGOTIATE_CIPHERS ;
 int SSL_ERROR_SYSCALL ;
 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int SSL_ERROR_ZERO_RETURN ;
 int SSL_do_handshake (TYPE_11__*) ;
 int SSL_get_error (TYPE_11__*,int) ;
 scalar_t__ SSL_is_server (TYPE_11__*) ;
 int ngx_connection_error (TYPE_3__*,int ,char*) ;
 int ngx_errno ;
 scalar_t__ ngx_handle_read_event (TYPE_9__*,int ) ;
 scalar_t__ ngx_handle_write_event (TYPE_8__*,int ) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_ssl_clear_error (int ) ;
 int ngx_ssl_connection_error (TYPE_3__*,int,int ,char*) ;
 void* ngx_ssl_handshake_handler ;
 int ngx_ssl_handshake_log (TYPE_3__*) ;
 int ngx_ssl_recv ;
 int ngx_ssl_recv_chain ;
 int ngx_ssl_send_chain ;
 scalar_t__ ngx_ssl_try_early_data (TYPE_3__*) ;
 int ngx_ssl_write ;

ngx_int_t
ngx_ssl_handshake(ngx_connection_t *c)
{
    int n, sslerr;
    ngx_err_t err;







    ngx_ssl_clear_error(c->log);

    n = SSL_do_handshake(c->ssl->connection);

    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, 0, "SSL_do_handshake: %d", n);

    if (n == 1) {

        if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
            return NGX_ERROR;
        }

        if (ngx_handle_write_event(c->write, 0) != NGX_OK) {
            return NGX_ERROR;
        }





        c->ssl->handshaked = 1;

        c->recv = ngx_ssl_recv;
        c->send = ngx_ssl_write;
        c->recv_chain = ngx_ssl_recv_chain;
        c->send_chain = ngx_ssl_send_chain;
        return NGX_OK;
    }

    sslerr = SSL_get_error(c->ssl->connection, n);

    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, 0, "SSL_get_error: %d", sslerr);

    if (sslerr == SSL_ERROR_WANT_READ) {
        c->read->ready = 0;
        c->read->handler = ngx_ssl_handshake_handler;
        c->write->handler = ngx_ssl_handshake_handler;

        if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
            return NGX_ERROR;
        }

        if (ngx_handle_write_event(c->write, 0) != NGX_OK) {
            return NGX_ERROR;
        }

        return NGX_AGAIN;
    }

    if (sslerr == SSL_ERROR_WANT_WRITE) {
        c->write->ready = 0;
        c->read->handler = ngx_ssl_handshake_handler;
        c->write->handler = ngx_ssl_handshake_handler;

        if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
            return NGX_ERROR;
        }

        if (ngx_handle_write_event(c->write, 0) != NGX_OK) {
            return NGX_ERROR;
        }

        return NGX_AGAIN;
    }

    err = (sslerr == SSL_ERROR_SYSCALL) ? ngx_errno : 0;

    c->ssl->no_wait_shutdown = 1;
    c->ssl->no_send_shutdown = 1;
    c->read->eof = 1;

    if (sslerr == SSL_ERROR_ZERO_RETURN || ERR_peek_error() == 0) {
        ngx_connection_error(c, err,
                             "peer closed connection in SSL handshake");

        return NGX_ERROR;
    }

    c->read->error = 1;

    ngx_ssl_connection_error(c, sslerr, err, "SSL_do_handshake() failed");

    return NGX_ERROR;
}
