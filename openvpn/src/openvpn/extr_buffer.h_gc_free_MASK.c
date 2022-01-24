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
struct gc_arena {scalar_t__ list_special; scalar_t__ list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC1 (struct gc_arena*) ; 

__attribute__((used)) static inline void
FUNC2(struct gc_arena *a)
{
    if (a->list)
    {
        FUNC0(a);
    }
    if (a->list_special)
    {
        FUNC1(a);
    }
}