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
 char* FUNC0 (size_t,int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (char const*,char) ; 
 char* FUNC3 (char const*,struct gc_arena*) ; 

__attribute__((used)) static char *
FUNC4(const char *addr, struct gc_arena *gc)
{
    const char *end = FUNC2(addr, '/');
    char *ret = NULL;
    if (NULL == end)
    {
        ret = FUNC3(addr, gc);
    }
    else
    {
        size_t len = end - addr;
        ret = FUNC0(len + 1, true, gc);
        FUNC1(ret, addr, len);
    }
    return ret;
}