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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (struct buffer*) ; 
 struct buffer FUNC2 (scalar_t__,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,char*,char const*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static char *
FUNC5(const char *name, const char *value, struct gc_arena *gc)
{
    struct buffer out;

    FUNC0(name);
    if (!value)
    {
        value = "";
    }
    out = FUNC2(FUNC4(name) + FUNC4(value) + 2, gc);
    FUNC3(&out, "%s=%s", name, value);
    return FUNC1(&out);
}