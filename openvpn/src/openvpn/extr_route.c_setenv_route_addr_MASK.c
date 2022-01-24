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
struct env_set {int dummy; } ;
struct buffer {int dummy; } ;
typedef  int /*<<< orphan*/  in_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 struct buffer FUNC1 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct gc_arena*) ; 
 struct gc_arena FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC6 (struct env_set*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct env_set *es, const char *key, const in_addr_t addr, int i)
{
    struct gc_arena gc = FUNC4();
    struct buffer name = FUNC1(256, &gc);
    if (i >= 0)
    {
        FUNC2(&name, "route_%s_%d", key, i);
    }
    else
    {
        FUNC2(&name, "route_%s", key);
    }
    FUNC6(es, FUNC0(&name), FUNC5(addr, 0, &gc));
    FUNC3(&gc);
}