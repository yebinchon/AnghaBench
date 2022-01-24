#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct context {int /*<<< orphan*/  first_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct context*) ; 

__attribute__((used)) static void
FUNC2(struct context *c)
{
    if (!c->first_time)
    {
        FUNC1(c);
    }
    else
    {
        FUNC0(0); /* do management hold on first context initialization */
    }
}