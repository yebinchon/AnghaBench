#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ timer_set; } ;
struct TYPE_10__ {int /*<<< orphan*/  out_queue; int /*<<< orphan*/  out_pos; int /*<<< orphan*/ * out; int /*<<< orphan*/  out_last; scalar_t__ in_pool; scalar_t__ in_old_pool; TYPE_9__ ping_evt; TYPE_3__* connection; } ;
typedef  TYPE_1__ ngx_rtmp_session_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_core_srv_conf_t ;
struct TYPE_11__ {TYPE_1__* data; } ;
typedef  TYPE_2__ ngx_event_t ;
struct TYPE_12__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_3__ ngx_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  NGX_RTMP_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_rtmp_core_module ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(ngx_event_t *e)
{
    ngx_rtmp_session_t                 *s;
    ngx_connection_t                   *c;
    ngx_rtmp_core_srv_conf_t           *cscf;

    s = e->data;
    c = s->connection;

    cscf = FUNC7(s, ngx_rtmp_core_module);

    FUNC2(NGX_LOG_DEBUG_RTMP, c->log, 0, "close session");

    FUNC4(s, NGX_RTMP_DISCONNECT, NULL, NULL);

    if (s->ping_evt.timer_set) {
        FUNC0(&s->ping_evt);
    }

    if (s->in_old_pool) {
        FUNC1(s->in_old_pool);
    }

    if (s->in_pool) {
        FUNC1(s->in_pool);
    }

    FUNC5(s);

    while (s->out_pos != s->out_last) {
        FUNC6(cscf, s->out[s->out_pos++]);
        s->out_pos %= s->out_queue;
    }

    FUNC3(c);
}