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
 unsigned int const M_DEBUG ; 
 unsigned int const M_FATAL ; 
 unsigned int const M_INFO ; 
 unsigned int const M_NONFATAL ; 
 unsigned int const M_WARN ; 
 struct buffer FUNC1 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*) ; 

const char *
FUNC3(const unsigned int flags, struct gc_arena *gc)
{
    struct buffer out = FUNC1(16, gc);
    if (flags == M_INFO)
    {
        FUNC2(&out, "I");
    }
    if (flags & M_FATAL)
    {
        FUNC2(&out, "F");
    }
    if (flags & M_NONFATAL)
    {
        FUNC2(&out, "N");
    }
    if (flags & M_WARN)
    {
        FUNC2(&out, "W");
    }
    if (flags & M_DEBUG)
    {
        FUNC2(&out, "D");
    }
    return FUNC0(&out);
}