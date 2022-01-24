#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ ngx_rtmp_netcall_session_t ;
struct TYPE_12__ {scalar_t__ timer_set; scalar_t__ timedout; TYPE_3__* data; } ;
typedef  TYPE_2__ ngx_event_t ;
struct TYPE_13__ {int timedout; int /*<<< orphan*/  read; int /*<<< orphan*/ * (* send_chain ) (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  log; scalar_t__ destroyed; TYPE_1__* data; } ;
typedef  TYPE_3__ ngx_connection_t ;
typedef  int /*<<< orphan*/  ngx_chain_t ;

/* Variables and functions */
 int /*<<< orphan*/ * NGX_CHAIN_ERROR ; 
 int /*<<< orphan*/  NGX_ETIMEDOUT ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  NGX_WRITE_EVENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(ngx_event_t *wev)
{
    ngx_rtmp_netcall_session_t         *cs;
    ngx_connection_t                   *cc;
    ngx_chain_t                        *cl;

    cc = wev->data;
    cs = cc->data;

    if (cc->destroyed) {
        return;
    }

    if (wev->timedout) {
        FUNC4(NGX_LOG_INFO, cc->log, NGX_ETIMEDOUT,
                "netcall: client send timed out");
        cc->timedout = 1;
        FUNC5(cc);
        return;
    }

    if (wev->timer_set) {
        FUNC2(wev);
    }

    cl = cc->send_chain(cc, cs->out, 0);

    if (cl == NGX_CHAIN_ERROR) {
        FUNC5(cc);
        return;
    }

    cs->out = cl;

    /* more data to send? */
    if (cl) {
        FUNC0(wev, cs->timeout);
        if (FUNC3(wev, 0) != NGX_OK) {
            FUNC5(cc);
        }
        return;
    }

    /* we've sent everything we had.
     * now receive reply */
    FUNC1(wev, NGX_WRITE_EVENT, 0);

    FUNC6(cc->read);
}