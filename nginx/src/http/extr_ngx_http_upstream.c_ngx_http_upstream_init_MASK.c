#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ stream; TYPE_2__* connection; } ;
typedef  TYPE_1__ ngx_http_request_t ;
struct TYPE_9__ {TYPE_7__* write; TYPE_6__* read; int /*<<< orphan*/  log; } ;
typedef  TYPE_2__ ngx_connection_t ;
struct TYPE_11__ {int /*<<< orphan*/  active; } ;
struct TYPE_10__ {scalar_t__ timer_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_CLEAR_EVENT ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int NGX_USE_CLEAR_EVENT ; 
 int /*<<< orphan*/  NGX_WRITE_EVENT ; 
 scalar_t__ FUNC0 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int ngx_event_flags ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 

void
FUNC5(ngx_http_request_t *r)
{
    ngx_connection_t     *c;

    c = r->connection;

    FUNC4(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http init upstream, client timer: %d", c->read->timer_set);

#if (NGX_HTTP_V2)
    if (r->stream) {
        ngx_http_upstream_init_request(r);
        return;
    }
#endif

    if (c->read->timer_set) {
        FUNC1(c->read);
    }

    if (ngx_event_flags & NGX_USE_CLEAR_EVENT) {

        if (!c->write->active) {
            if (FUNC0(c->write, NGX_WRITE_EVENT, NGX_CLEAR_EVENT)
                == NGX_ERROR)
            {
                FUNC2(r, NGX_HTTP_INTERNAL_SERVER_ERROR);
                return;
            }
        }
    }

    FUNC3(r);
}