#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int ngx_msec_t ;
typedef  scalar_t__ ngx_msec_int_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_12__ {scalar_t__ lingering_close; scalar_t__ discard_body; scalar_t__ lingering_time; TYPE_4__* connection; } ;
typedef  TYPE_1__ ngx_http_request_t ;
struct TYPE_13__ {int lingering_timeout; } ;
typedef  TYPE_2__ ngx_http_core_loc_conf_t ;
struct TYPE_14__ {scalar_t__ timedout; } ;
typedef  TYPE_3__ ngx_event_t ;
struct TYPE_15__ {int timedout; int error; TYPE_3__* read; } ;
typedef  TYPE_4__ ngx_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_DONE ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 () ; 

void
FUNC6(ngx_http_request_t *r)
{
    ngx_int_t                  rc;
    ngx_msec_t                 timer;
    ngx_event_t               *rev;
    ngx_connection_t          *c;
    ngx_http_core_loc_conf_t  *clcf;

    c = r->connection;
    rev = c->read;

    if (rev->timedout) {
        c->timedout = 1;
        c->error = 1;
        FUNC2(r, NGX_ERROR);
        return;
    }

    if (r->lingering_time) {
        timer = (ngx_msec_t) r->lingering_time - (ngx_msec_t) FUNC5();

        if ((ngx_msec_int_t) timer <= 0) {
            r->discard_body = 0;
            r->lingering_close = 0;
            FUNC2(r, NGX_ERROR);
            return;
        }

    } else {
        timer = 0;
    }

    rc = FUNC4(r);

    if (rc == NGX_OK) {
        r->discard_body = 0;
        r->lingering_close = 0;
        FUNC2(r, NGX_DONE);
        return;
    }

    if (rc >= NGX_HTTP_SPECIAL_RESPONSE) {
        c->error = 1;
        FUNC2(r, NGX_ERROR);
        return;
    }

    /* rc == NGX_AGAIN */

    if (FUNC1(rev, 0) != NGX_OK) {
        c->error = 1;
        FUNC2(r, NGX_ERROR);
        return;
    }

    if (timer) {

        clcf = FUNC3(r, ngx_http_core_module);

        timer *= 1000;

        if (timer > clcf->lingering_timeout) {
            timer = clcf->lingering_timeout;
        }

        FUNC0(rev, timer);
    }
}