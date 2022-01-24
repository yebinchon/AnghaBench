#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_stream_session_t ;
struct TYPE_5__ {scalar_t__ timedout; TYPE_2__* data; } ;
typedef  TYPE_1__ ngx_event_t ;
struct TYPE_6__ {int /*<<< orphan*/  log; int /*<<< orphan*/  write; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ ngx_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ETIMEDOUT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_STREAM ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6(ngx_event_t *ev)
{
    ngx_connection_t      *c;
    ngx_stream_session_t  *s;

    c = ev->data;
    s = c->data;

    if (ev->timedout) {
        FUNC2(NGX_LOG_ERR, c->log, NGX_ETIMEDOUT, "upstream timed out");
        FUNC4(s);
        return;
    }

    FUNC0(c->write);

    FUNC1(NGX_LOG_DEBUG_STREAM, c->log, 0,
                   "stream proxy connect upstream");

    if (FUNC5(c) != NGX_OK) {
        FUNC4(s);
        return;
    }

    FUNC3(s);
}