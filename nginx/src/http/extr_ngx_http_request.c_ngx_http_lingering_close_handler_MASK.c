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
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ssize_t ;
typedef  int ngx_msec_t ;
typedef  scalar_t__ ngx_msec_int_t ;
struct TYPE_12__ {scalar_t__ lingering_time; } ;
typedef  TYPE_1__ ngx_http_request_t ;
struct TYPE_13__ {int lingering_timeout; } ;
typedef  TYPE_2__ ngx_http_core_loc_conf_t ;
struct TYPE_14__ {scalar_t__ ready; scalar_t__ timedout; TYPE_4__* data; } ;
typedef  TYPE_3__ ngx_event_t ;
struct TYPE_15__ {scalar_t__ (* recv ) (TYPE_4__*,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/  log; TYPE_1__* data; } ;
typedef  TYPE_4__ ngx_connection_t ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_ERROR ; 
 int NGX_HTTP_LINGERING_BUFFER_SIZE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC8(ngx_event_t *rev)
{
    ssize_t                    n;
    ngx_msec_t                 timer;
    ngx_connection_t          *c;
    ngx_http_request_t        *r;
    ngx_http_core_loc_conf_t  *clcf;
    u_char                     buffer[NGX_HTTP_LINGERING_BUFFER_SIZE];

    c = rev->data;
    r = c->data;

    FUNC4(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http lingering close handler");

    if (rev->timedout) {
        FUNC2(r, 0);
        return;
    }

    timer = (ngx_msec_t) r->lingering_time - (ngx_msec_t) FUNC6();
    if ((ngx_msec_int_t) timer <= 0) {
        FUNC2(r, 0);
        return;
    }

    do {
        n = c->recv(c, buffer, NGX_HTTP_LINGERING_BUFFER_SIZE);

        FUNC5(NGX_LOG_DEBUG_HTTP, c->log, 0, "lingering read: %z", n);

        if (n == NGX_AGAIN) {
            break;
        }

        if (n == NGX_ERROR || n == 0) {
            FUNC2(r, 0);
            return;
        }

    } while (rev->ready);

    if (FUNC1(rev, 0) != NGX_OK) {
        FUNC2(r, 0);
        return;
    }

    clcf = FUNC3(r, ngx_http_core_module);

    timer *= 1000;

    if (timer > clcf->lingering_timeout) {
        timer = clcf->lingering_timeout;
    }

    FUNC0(rev, timer);
}