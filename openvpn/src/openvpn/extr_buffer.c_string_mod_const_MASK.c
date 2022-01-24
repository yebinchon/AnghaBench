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

/* Variables and functions */
 char* FUNC0 (char const*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int const,unsigned int const,char const) ; 

const char *
FUNC2(const char *str,
                 const unsigned int inclusive,
                 const unsigned int exclusive,
                 const char replace,
                 struct gc_arena *gc)
{
    if (str)
    {
        char *buf = FUNC0(str, gc);
        FUNC1(buf, inclusive, exclusive, replace);
        return buf;
    }
    else
    {
        return NULL;
    }
}