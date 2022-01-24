#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int time_t ;
struct TYPE_3__ {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_4__ {TYPE_1__ timeout_random_component; scalar_t__ update_timeout_random_component; } ;
struct context {TYPE_2__ c2; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,long) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ now ; 

__attribute__((used)) static void
FUNC2(struct context *c)
{
    const int update_interval = 10; /* seconds */
    c->c2.update_timeout_random_component = now + update_interval;
    c->c2.timeout_random_component.tv_usec = (time_t) FUNC1() & 0x0003FFFF;
    c->c2.timeout_random_component.tv_sec = 0;

    FUNC0(D_INTERVAL, "RANDOM USEC=%ld", (long) c->c2.timeout_random_component.tv_usec);
}