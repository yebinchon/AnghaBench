#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ connect_timeout; } ;
struct TYPE_6__ {TYPE_2__ ce; } ;
struct TYPE_4__ {int /*<<< orphan*/  server_poll_interval; } ;
struct context {TYPE_3__ options; TYPE_1__ c2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  now ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2(struct context *c)
{
    FUNC1();
    if (c->options.ce.connect_timeout)
    {
        FUNC0(&c->c2.server_poll_interval, c->options.ce.connect_timeout, now);
    }
}