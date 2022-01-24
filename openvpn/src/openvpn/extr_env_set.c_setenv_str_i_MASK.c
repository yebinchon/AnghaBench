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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gc_arena*) ; 
 struct gc_arena FUNC1 () ; 
 char* FUNC2 (char const*,int const,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC3 (struct env_set*,char const*,char const*) ; 

void
FUNC4(struct env_set *es, const char *name, const char *value, const int i)
{
    struct gc_arena gc = FUNC1();
    const char *name_str = FUNC2(name, i, &gc);
    FUNC3(es, name_str, value);
    FUNC0(&gc);
}