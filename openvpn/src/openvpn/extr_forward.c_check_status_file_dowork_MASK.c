#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ status_output; } ;
struct context {TYPE_1__ c1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct context*,scalar_t__) ; 

void
FUNC1(struct context *c)
{
    if (c->c1.status_output)
    {
        FUNC0(c, c->c1.status_output);
    }
}