#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  ngx_err_t ;
struct TYPE_11__ {int sent; TYPE_2__* write; TYPE_1__* ssl; TYPE_7__* read; int /*<<< orphan*/  log; } ;
typedef  TYPE_3__ ngx_connection_t ;
struct TYPE_12__ {int ready; int /*<<< orphan*/ * handler; } ;
struct TYPE_10__ {int error; scalar_t__ ready; } ;
struct TYPE_9__ {int no_wait_shutdown; int no_send_shutdown; int /*<<< orphan*/ * saved_read_handler; int /*<<< orphan*/  connection; scalar_t__ in_early; } ;

/* Variables and functions */
 int NGX_AGAIN ; 
 int NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_EVENT ; 
 scalar_t__ NGX_OK ; 
 int SSL_ERROR_SYSCALL ; 
 int SSL_ERROR_WANT_READ ; 
 int SSL_ERROR_WANT_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  ngx_errno ; 
 scalar_t__ FUNC2 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_posted_events ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * ngx_ssl_read_handler ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,size_t) ; 

ssize_t
FUNC9(ngx_connection_t *c, u_char *data, size_t size)
{
    int        n, sslerr;
    ngx_err_t  err;

#ifdef SSL_READ_EARLY_DATA_SUCCESS
    if (c->ssl->in_early) {
        return ngx_ssl_write_early(c, data, size);
    }
#endif

    FUNC6(c->log);

    FUNC4(NGX_LOG_DEBUG_EVENT, c->log, 0, "SSL to write: %uz", size);

    n = FUNC1(c->ssl->connection, data, size);

    FUNC4(NGX_LOG_DEBUG_EVENT, c->log, 0, "SSL_write: %d", n);

    if (n > 0) {

        if (c->ssl->saved_read_handler) {

            c->read->handler = c->ssl->saved_read_handler;
            c->ssl->saved_read_handler = NULL;
            c->read->ready = 1;

            if (FUNC2(c->read, 0) != NGX_OK) {
                return NGX_ERROR;
            }

            FUNC5(c->read, &ngx_posted_events);
        }

        c->sent += n;

        return n;
    }

    sslerr = FUNC0(c->ssl->connection, n);

    err = (sslerr == SSL_ERROR_SYSCALL) ? ngx_errno : 0;

    FUNC4(NGX_LOG_DEBUG_EVENT, c->log, 0, "SSL_get_error: %d", sslerr);

    if (sslerr == SSL_ERROR_WANT_WRITE) {

        if (c->ssl->saved_read_handler) {

            c->read->handler = c->ssl->saved_read_handler;
            c->ssl->saved_read_handler = NULL;
            c->read->ready = 1;

            if (FUNC2(c->read, 0) != NGX_OK) {
                return NGX_ERROR;
            }

            FUNC5(c->read, &ngx_posted_events);
        }

        c->write->ready = 0;
        return NGX_AGAIN;
    }

    if (sslerr == SSL_ERROR_WANT_READ) {

        FUNC3(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "SSL_write: want read");

        c->read->ready = 0;

        if (FUNC2(c->read, 0) != NGX_OK) {
            return NGX_ERROR;
        }

        /*
         * we do not set the timer because there is already
         * the write event timer
         */

        if (c->ssl->saved_read_handler == NULL) {
            c->ssl->saved_read_handler = c->read->handler;
            c->read->handler = ngx_ssl_read_handler;
        }

        return NGX_AGAIN;
    }

    c->ssl->no_wait_shutdown = 1;
    c->ssl->no_send_shutdown = 1;
    c->write->error = 1;

    FUNC7(c, sslerr, err, "SSL_write() failed");

    return NGX_ERROR;
}