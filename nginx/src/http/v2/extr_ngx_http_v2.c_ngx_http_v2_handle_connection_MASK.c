#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_18__ {int /*<<< orphan*/  idle_timeout; int /*<<< orphan*/  recv_timeout; } ;
typedef  TYPE_3__ ngx_http_v2_srv_conf_t ;
struct TYPE_17__ {scalar_t__ incomplete; } ;
struct TYPE_19__ {int blocked; int /*<<< orphan*/ * free_fake_connections; scalar_t__ frames; int /*<<< orphan*/ * free_frames; int /*<<< orphan*/ * pool; TYPE_2__ state; TYPE_1__* http_connection; scalar_t__ goaway; TYPE_5__* connection; scalar_t__ pushing; scalar_t__ processing; scalar_t__ last_out; } ;
typedef  TYPE_4__ ngx_http_v2_connection_t ;
struct TYPE_20__ {int destroyed; TYPE_13__* read; TYPE_12__* write; scalar_t__ ssl; scalar_t__ buffered; scalar_t__ error; } ;
typedef  TYPE_5__ ngx_connection_t ;
struct TYPE_16__ {int /*<<< orphan*/  conf_ctx; } ;
struct TYPE_15__ {int /*<<< orphan*/  handler; } ;
struct TYPE_14__ {scalar_t__ timer_set; int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  ngx_http_empty_handler ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_v2_idle_handler ; 
 int /*<<< orphan*/  ngx_http_v2_module ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 

__attribute__((used)) static void
FUNC8(ngx_http_v2_connection_t *h2c)
{
    ngx_int_t                rc;
    ngx_connection_t        *c;
    ngx_http_v2_srv_conf_t  *h2scf;

    if (h2c->last_out || h2c->processing || h2c->pushing) {
        return;
    }

    c = h2c->connection;

    if (c->error) {
        FUNC3(c);
        return;
    }

    if (c->buffered) {
        h2c->blocked = 1;

        rc = FUNC5(h2c);

        h2c->blocked = 0;

        if (rc == NGX_ERROR) {
            FUNC3(c);
            return;
        }

        if (rc == NGX_AGAIN) {
            return;
        }

        /* rc == NGX_OK */
    }

    if (h2c->goaway) {
        FUNC3(c);
        return;
    }

    h2scf = FUNC4(h2c->http_connection->conf_ctx,
                                         ngx_http_v2_module);
    if (h2c->state.incomplete) {
        FUNC0(c->read, h2scf->recv_timeout);
        return;
    }

    FUNC2(h2c->pool);

    h2c->pool = NULL;
    h2c->free_frames = NULL;
    h2c->frames = 0;
    h2c->free_fake_connections = NULL;

#if (NGX_HTTP_SSL)
    if (c->ssl) {
        ngx_ssl_free_buffer(c);
    }
#endif

    c->destroyed = 1;
    FUNC6(c, 1);

    c->write->handler = ngx_http_empty_handler;
    c->read->handler = ngx_http_v2_idle_handler;

    if (c->write->timer_set) {
        FUNC1(c->write);
    }

    FUNC0(c->read, h2scf->idle_timeout);
}