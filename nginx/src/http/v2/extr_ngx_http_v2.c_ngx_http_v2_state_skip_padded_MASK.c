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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {scalar_t__ padding; int /*<<< orphan*/  length; } ;
struct TYPE_6__ {TYPE_1__ state; } ;
typedef  TYPE_2__ ngx_http_v2_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u_char *
FUNC1(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end)
{
    h2c->state.length += h2c->state.padding;
    h2c->state.padding = 0;

    return FUNC0(h2c, pos, end);
}