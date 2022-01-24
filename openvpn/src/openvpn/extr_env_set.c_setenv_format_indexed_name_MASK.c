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
struct buffer {int dummy; } ;

/* Variables and functions */
 char const* FUNC0 (struct buffer*) ; 
 struct buffer FUNC1 (scalar_t__,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*,char const*,...) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static const char *
FUNC4(const char *name, const int i, struct gc_arena *gc)
{
    struct buffer out = FUNC1(FUNC3(name) + 16, gc);
    if (i >= 0)
    {
        FUNC2(&out, "%s_%d", name, i);
    }
    else
    {
        FUNC2(&out, "%s", name);
    }
    return FUNC0(&out);
}