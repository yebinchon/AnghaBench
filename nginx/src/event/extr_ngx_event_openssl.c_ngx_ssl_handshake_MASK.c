#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_err_t ;
struct TYPE_17__ {TYPE_9__* read; TYPE_2__* ssl; TYPE_8__* write; int /*<<< orphan*/  log; int /*<<< orphan*/  send_chain; int /*<<< orphan*/  recv_chain; int /*<<< orphan*/  send; int /*<<< orphan*/  recv; } ;
typedef  TYPE_3__ ngx_connection_t ;
struct TYPE_19__ {int eof; int error; void* handler; scalar_t__ ready; } ;
struct TYPE_18__ {void* handler; scalar_t__ ready; } ;
struct TYPE_16__ {int handshaked; int no_wait_shutdown; int no_send_shutdown; TYPE_11__* connection; scalar_t__ try_early_data; } ;
struct TYPE_15__ {int /*<<< orphan*/  flags; } ;
struct TYPE_14__ {TYPE_1__* s3; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_EVENT ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  SSL3_FLAGS_NO_RENEGOTIATE_CIPHERS ; 
 int SSL_ERROR_SYSCALL ; 
 int SSL_ERROR_WANT_READ ; 
 int SSL_ERROR_WANT_WRITE ; 
 int SSL_ERROR_ZERO_RETURN ; 
 int FUNC1 (TYPE_11__*) ; 
 int FUNC2 (TYPE_11__*,int) ; 
 scalar_t__ FUNC3 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ngx_errno ; 
 scalar_t__ FUNC5 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int /*<<< orphan*/ ,char*) ; 
 void* ngx_ssl_handshake_handler ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_ssl_recv ; 
 int /*<<< orphan*/  ngx_ssl_recv_chain ; 
 int /*<<< orphan*/  ngx_ssl_send_chain ; 
 scalar_t__ FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_ssl_write ; 

ngx_int_t
FUNC12(ngx_connection_t *c)
{
    int        n, sslerr;
    ngx_err_t  err;

#ifdef SSL_READ_EARLY_DATA_SUCCESS
    if (c->ssl->try_early_data) {
        return ngx_ssl_try_early_data(c);
    }
#endif

    FUNC8(c->log);

    n = FUNC1(c->ssl->connection);

    FUNC7(NGX_LOG_DEBUG_EVENT, c->log, 0, "SSL_do_handshake: %d", n);

    if (n == 1) {

        if (FUNC5(c->read, 0) != NGX_OK) {
            return NGX_ERROR;
        }

        if (FUNC6(c->write, 0) != NGX_OK) {
            return NGX_ERROR;
        }

#if (NGX_DEBUG)
        ngx_ssl_handshake_log(c);
#endif

        c->ssl->handshaked = 1;

        c->recv = ngx_ssl_recv;
        c->send = ngx_ssl_write;
        c->recv_chain = ngx_ssl_recv_chain;
        c->send_chain = ngx_ssl_send_chain;

#ifndef SSL_OP_NO_RENEGOTIATION
#if OPENSSL_VERSION_NUMBER < 0x10100000L
#ifdef SSL3_FLAGS_NO_RENEGOTIATE_CIPHERS

        /* initial handshake done, disable renegotiation (CVE-2009-3555) */
        if (c->ssl->connection->s3 && SSL_is_server(c->ssl->connection)) {
            c->ssl->connection->s3->flags |= SSL3_FLAGS_NO_RENEGOTIATE_CIPHERS;
        }

#endif
#endif
#endif

        return NGX_OK;
    }

    sslerr = FUNC2(c->ssl->connection, n);

    FUNC7(NGX_LOG_DEBUG_EVENT, c->log, 0, "SSL_get_error: %d", sslerr);

    if (sslerr == SSL_ERROR_WANT_READ) {
        c->read->ready = 0;
        c->read->handler = ngx_ssl_handshake_handler;
        c->write->handler = ngx_ssl_handshake_handler;

        if (FUNC5(c->read, 0) != NGX_OK) {
            return NGX_ERROR;
        }

        if (FUNC6(c->write, 0) != NGX_OK) {
            return NGX_ERROR;
        }

        return NGX_AGAIN;
    }

    if (sslerr == SSL_ERROR_WANT_WRITE) {
        c->write->ready = 0;
        c->read->handler = ngx_ssl_handshake_handler;
        c->write->handler = ngx_ssl_handshake_handler;

        if (FUNC5(c->read, 0) != NGX_OK) {
            return NGX_ERROR;
        }

        if (FUNC6(c->write, 0) != NGX_OK) {
            return NGX_ERROR;
        }

        return NGX_AGAIN;
    }

    err = (sslerr == SSL_ERROR_SYSCALL) ? ngx_errno : 0;

    c->ssl->no_wait_shutdown = 1;
    c->ssl->no_send_shutdown = 1;
    c->read->eof = 1;

    if (sslerr == SSL_ERROR_ZERO_RETURN || FUNC0() == 0) {
        FUNC4(c, err,
                             "peer closed connection in SSL handshake");

        return NGX_ERROR;
    }

    c->read->error = 1;

    FUNC9(c, sslerr, err, "SSL_do_handshake() failed");

    return NGX_ERROR;
}