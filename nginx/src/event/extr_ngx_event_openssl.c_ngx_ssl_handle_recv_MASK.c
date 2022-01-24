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
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_err_t ;
struct TYPE_10__ {int /*<<< orphan*/  log; TYPE_2__* ssl; TYPE_6__* write; TYPE_1__* read; } ;
typedef  TYPE_3__ ngx_connection_t ;
struct TYPE_11__ {int ready; int /*<<< orphan*/ * handler; } ;
struct TYPE_9__ {int no_wait_shutdown; int no_send_shutdown; int /*<<< orphan*/ * saved_write_handler; int /*<<< orphan*/  connection; scalar_t__ renegotiation; } ;
struct TYPE_8__ {scalar_t__ ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_DONE ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_EVENT ; 
 int /*<<< orphan*/  NGX_LOG_NOTICE ; 
 scalar_t__ NGX_OK ; 
 int SSL_ERROR_SYSCALL ; 
 int SSL_ERROR_WANT_READ ; 
 int SSL_ERROR_WANT_WRITE ; 
 int SSL_ERROR_ZERO_RETURN ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ngx_errno ; 
 scalar_t__ FUNC3 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_posted_events ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * ngx_ssl_write_handler ; 

__attribute__((used)) static ngx_int_t
FUNC10(ngx_connection_t *c, int n)
{
    int        sslerr;
    ngx_err_t  err;

#ifndef SSL_OP_NO_RENEGOTIATION

    if (c->ssl->renegotiation) {
        /*
         * disable renegotiation (CVE-2009-3555):
         * OpenSSL (at least up to 0.9.8l) does not handle disabled
         * renegotiation gracefully, so drop connection here
         */

        FUNC6(NGX_LOG_NOTICE, c->log, 0, "SSL renegotiation disabled");

        while (FUNC1()) {
            FUNC9(NGX_LOG_DEBUG, c->log, 0,
                          "ignoring stale global SSL error");
        }

        FUNC0();

        c->ssl->no_wait_shutdown = 1;
        c->ssl->no_send_shutdown = 1;

        return NGX_ERROR;
    }

#endif

    if (n > 0) {

        if (c->ssl->saved_write_handler) {

            c->write->handler = c->ssl->saved_write_handler;
            c->ssl->saved_write_handler = NULL;
            c->write->ready = 1;

            if (FUNC3(c->write, 0) != NGX_OK) {
                return NGX_ERROR;
            }

            FUNC7(c->write, &ngx_posted_events);
        }

        return NGX_OK;
    }

    sslerr = FUNC2(c->ssl->connection, n);

    err = (sslerr == SSL_ERROR_SYSCALL) ? ngx_errno : 0;

    FUNC5(NGX_LOG_DEBUG_EVENT, c->log, 0, "SSL_get_error: %d", sslerr);

    if (sslerr == SSL_ERROR_WANT_READ) {

        if (c->ssl->saved_write_handler) {

            c->write->handler = c->ssl->saved_write_handler;
            c->ssl->saved_write_handler = NULL;
            c->write->ready = 1;

            if (FUNC3(c->write, 0) != NGX_OK) {
                return NGX_ERROR;
            }

            FUNC7(c->write, &ngx_posted_events);
        }

        c->read->ready = 0;
        return NGX_AGAIN;
    }

    if (sslerr == SSL_ERROR_WANT_WRITE) {

        FUNC4(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "SSL_read: want write");

        c->write->ready = 0;

        if (FUNC3(c->write, 0) != NGX_OK) {
            return NGX_ERROR;
        }

        /*
         * we do not set the timer because there is already the read event timer
         */

        if (c->ssl->saved_write_handler == NULL) {
            c->ssl->saved_write_handler = c->write->handler;
            c->write->handler = ngx_ssl_write_handler;
        }

        return NGX_AGAIN;
    }

    c->ssl->no_wait_shutdown = 1;
    c->ssl->no_send_shutdown = 1;

    if (sslerr == SSL_ERROR_ZERO_RETURN || FUNC1() == 0) {
        FUNC4(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "peer shutdown SSL cleanly");
        return NGX_DONE;
    }

    FUNC8(c, sslerr, err, "SSL_read() failed");

    return NGX_ERROR;
}