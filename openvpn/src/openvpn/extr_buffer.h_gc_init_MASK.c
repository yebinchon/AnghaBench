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
struct gc_arena {int /*<<< orphan*/ * list_special; int /*<<< orphan*/ * list; } ;

/* Variables and functions */

__attribute__((used)) static inline void
FUNC0(struct gc_arena *a)
{
    a->list = NULL;
    a->list_special = NULL;
}