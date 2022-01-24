#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_err_t ;
struct TYPE_9__ {TYPE_1__* ssl; TYPE_6__* read; TYPE_5__* write; int /*<<< orphan*/  log; scalar_t__ timedout; } ;
typedef  TYPE_2__ ngx_connection_t ;
struct TYPE_11__ {void* handler; } ;
struct TYPE_10__ {void* handler; } ;
struct TYPE_8__ {int /*<<< orphan*/  connection; scalar_t__ no_send_shutdown; scalar_t__ no_wait_shutdown; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_EVENT ; 
 scalar_t__ NGX_OK ; 
 int SSL_ERROR_SYSCALL ; 
 int SSL_ERROR_WANT_READ ; 
 int SSL_ERROR_WANT_WRITE ; 
 int SSL_ERROR_ZERO_RETURN ; 
 int SSL_RECEIVED_SHUTDOWN ; 
 int SSL_SENT_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  ngx_errno ; 
 scalar_t__ FUNC9 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,int /*<<< orphan*/ ,char*) ; 
 void* ngx_ssl_shutdown_handler ; 

ngx_int_t
FUNC14(ngx_connection_t *c)
{
    int        n, sslerr, mode;
    ngx_err_t  err;

    if (FUNC4(c->ssl->connection)) {
        /*
         * OpenSSL 1.0.2f complains if SSL_shutdown() is called during
         * an SSL handshake, while previous versions always return 0.
         * Avoid calling SSL_shutdown() if handshake wasn't completed.
         */

        FUNC1(c->ssl->connection);
        c->ssl = NULL;

        return NGX_OK;
    }

    if (c->timedout) {
        mode = SSL_RECEIVED_SHUTDOWN|SSL_SENT_SHUTDOWN;
        FUNC5(c->ssl->connection, 1);

    } else {
        mode = FUNC3(c->ssl->connection);

        if (c->ssl->no_wait_shutdown) {
            mode |= SSL_RECEIVED_SHUTDOWN;
        }

        if (c->ssl->no_send_shutdown) {
            mode |= SSL_SENT_SHUTDOWN;
        }

        if (c->ssl->no_wait_shutdown && c->ssl->no_send_shutdown) {
            FUNC5(c->ssl->connection, 1);
        }
    }

    FUNC6(c->ssl->connection, mode);

    FUNC12(c->log);

    n = FUNC7(c->ssl->connection);

    FUNC11(NGX_LOG_DEBUG_EVENT, c->log, 0, "SSL_shutdown: %d", n);

    sslerr = 0;

    /* before 0.9.8m SSL_shutdown() returned 0 instead of -1 on errors */

    if (n != 1 && FUNC0()) {
        sslerr = FUNC2(c->ssl->connection, n);

        FUNC11(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "SSL_get_error: %d", sslerr);
    }

    if (n == 1 || sslerr == 0 || sslerr == SSL_ERROR_ZERO_RETURN) {
        FUNC1(c->ssl->connection);
        c->ssl = NULL;

        return NGX_OK;
    }

    if (sslerr == SSL_ERROR_WANT_READ || sslerr == SSL_ERROR_WANT_WRITE) {
        c->read->handler = ngx_ssl_shutdown_handler;
        c->write->handler = ngx_ssl_shutdown_handler;

        if (FUNC9(c->read, 0) != NGX_OK) {
            return NGX_ERROR;
        }

        if (FUNC10(c->write, 0) != NGX_OK) {
            return NGX_ERROR;
        }

        if (sslerr == SSL_ERROR_WANT_READ) {
            FUNC8(c->read, 30000);
        }

        return NGX_AGAIN;
    }

    err = (sslerr == SSL_ERROR_SYSCALL) ? ngx_errno : 0;

    FUNC13(c, sslerr, err, "SSL_shutdown() failed");

    FUNC1(c->ssl->connection);
    c->ssl = NULL;

    return NGX_ERROR;
}