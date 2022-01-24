#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_9__ {size_t length; } ;
struct TYPE_10__ {TYPE_2__ state; TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_http_v2_connection_t ;
struct TYPE_8__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ * (*) (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,size_t) ; 

__attribute__((used)) static u_char *
FUNC4(ngx_http_v2_connection_t *h2c, u_char *pos, u_char *end)
{
    size_t  size;

    size = end - pos;

    if (size < h2c->state.length) {
        FUNC3(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                       "http2 frame skip %uz of %uz", size, h2c->state.length);

        h2c->state.length -= size;
        return FUNC1(h2c, end, end, ngx_http_v2_state_skip);
    }

    FUNC2(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 frame skip %uz", h2c->state.length);

    return FUNC0(h2c, pos + h2c->state.length, end);
}