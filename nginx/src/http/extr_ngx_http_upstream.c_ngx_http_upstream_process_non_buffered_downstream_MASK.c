#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_http_upstream_t ;
struct TYPE_9__ {int /*<<< orphan*/ * upstream; TYPE_3__* connection; } ;
typedef  TYPE_1__ ngx_http_request_t ;
struct TYPE_10__ {scalar_t__ timedout; } ;
typedef  TYPE_2__ ngx_event_t ;
struct TYPE_11__ {int timedout; TYPE_4__* log; TYPE_2__* write; } ;
typedef  TYPE_3__ ngx_connection_t ;
struct TYPE_12__ {char* action; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ETIMEDOUT ; 
 int /*<<< orphan*/  NGX_HTTP_REQUEST_TIME_OUT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(ngx_http_request_t *r)
{
    ngx_event_t          *wev;
    ngx_connection_t     *c;
    ngx_http_upstream_t  *u;

    c = r->connection;
    u = r->upstream;
    wev = c->write;

    FUNC3(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http upstream process non buffered downstream");

    c->log->action = "sending to client";

    if (wev->timedout) {
        c->timedout = 1;
        FUNC0(c, NGX_ETIMEDOUT, "client timed out");
        FUNC1(r, u, NGX_HTTP_REQUEST_TIME_OUT);
        return;
    }

    FUNC2(r, 1);
}