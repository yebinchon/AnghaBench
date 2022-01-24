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
struct route_ipv4 {int flags; } ;
struct gc_arena {int dummy; } ;

/* Variables and functions */
 int RT_DEFINED ; 
 int /*<<< orphan*/  FUNC0 (struct gc_arena*) ; 
 struct gc_arena FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct route_ipv4 const*,struct gc_arena*) ; 

__attribute__((used)) static void
FUNC4(const struct route_ipv4 *r, int level)
{
    struct gc_arena gc = FUNC1();
    if (r->flags & RT_DEFINED)
    {
        FUNC2(level, "%s", FUNC3(r, &gc));
    }
    FUNC0(&gc);
}