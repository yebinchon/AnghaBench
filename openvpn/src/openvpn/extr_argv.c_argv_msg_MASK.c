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
struct gc_arena {int dummy; } ;
struct argv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct argv const*,struct gc_arena*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gc_arena*) ; 
 struct gc_arena FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int const,char*,int /*<<< orphan*/ ) ; 

void
FUNC4(const int msglev, const struct argv *a)
{
    struct gc_arena gc = FUNC2();
    FUNC3(msglev, "%s", FUNC0(a, &gc, 0));
    FUNC1(&gc);
}