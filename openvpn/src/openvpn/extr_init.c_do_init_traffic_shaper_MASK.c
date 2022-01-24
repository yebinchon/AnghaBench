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
struct TYPE_4__ {int /*<<< orphan*/  shaper; } ;
struct TYPE_3__ {scalar_t__ shaper; } ;
struct context {TYPE_2__ c2; TYPE_1__ options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct context *c)
{
#ifdef ENABLE_FEATURE_SHAPER
    /* initialize traffic shaper (i.e. transmit bandwidth limiter) */
    if (c->options.shaper)
    {
        shaper_init(&c->c2.shaper, c->options.shaper);
        shaper_msg(&c->c2.shaper);
    }
#endif
}