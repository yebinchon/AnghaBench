#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ last_out; } ;
typedef  TYPE_1__ ngx_http_v2_connection_t ;
struct TYPE_10__ {scalar_t__ ready; int /*<<< orphan*/  (* handler ) (TYPE_2__*) ;TYPE_3__* data; int /*<<< orphan*/  log; } ;
typedef  TYPE_2__ ngx_event_t ;
struct TYPE_11__ {TYPE_1__* data; scalar_t__ error; } ;
typedef  TYPE_3__ ngx_connection_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(ngx_event_t *rev)
{
    ngx_connection_t          *c;
    ngx_http_v2_connection_t  *h2c;

    FUNC4(NGX_LOG_DEBUG_HTTP, rev->log, 0,
                   "http2 handle connection handler");

    c = rev->data;
    h2c = c->data;

    if (c->error) {
        FUNC0(h2c, 0);
        return;
    }

    rev->handler = ngx_http_v2_read_handler;

    if (rev->ready) {
        FUNC2(rev);
        return;
    }

    if (h2c->last_out && FUNC3(h2c) == NGX_ERROR) {
        FUNC0(h2c, 0);
        return;
    }

    FUNC1(c->data);
}