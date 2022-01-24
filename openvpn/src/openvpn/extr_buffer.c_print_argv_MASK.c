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
 char* FUNC0 (struct buffer*) ; 
 unsigned int const PA_BRACKET ; 
 struct buffer FUNC1 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*,...) ; 

char *
FUNC3(const char **p, struct gc_arena *gc, const unsigned int flags)
{
    struct buffer out = FUNC1(256, gc);
    int i = 0;
    for (;; )
    {
        const char *cp = *p++;
        if (!cp)
        {
            break;
        }
        if (i)
        {
            FUNC2(&out, " ");
        }
        if (flags & PA_BRACKET)
        {
            FUNC2(&out, "[%s]", cp);
        }
        else
        {
            FUNC2(&out, "%s", cp);
        }
        ++i;
    }
    return FUNC0(&out);
}