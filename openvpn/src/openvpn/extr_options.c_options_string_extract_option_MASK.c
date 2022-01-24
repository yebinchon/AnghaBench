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
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*,size_t const) ; 

char *
FUNC5(const char *options_string,const char *opt_name,
                              struct gc_arena *gc)
{
    char *ret = NULL;
    const size_t opt_name_len = FUNC3(opt_name);

    const char *p = options_string;
    while (p)
    {
        if (0 == FUNC4(p, opt_name, opt_name_len)
            && FUNC3(p) > (opt_name_len+1) && p[opt_name_len] == ' ')
        {
            /* option found, extract value */
            const char *start = &p[opt_name_len+1];
            const char *end = FUNC2(p, ',');
            size_t val_len = end ? end - start : FUNC3(start);
            ret = FUNC0(val_len+1, true, gc);
            FUNC1(ret, start, val_len);
            break;
        }
        p = FUNC2(p, ',');
        if (p)
        {
            p++; /* skip delimiter */
        }
    }
    return ret;
}