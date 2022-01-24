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
struct inf_file {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct inf_file*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(struct inf_file *inf, const char *str, char *output)
{
    const char *p, *var_start = NULL;
    int var_len = 0, len = 0;
    const char *substitution;

    for (p = str; *p; p++)
    {
        if (*p != '%')
        {
            if (var_start)
                var_len++;
            else
            {
                if (output)
                    *output++ = *p;
                len++;
            }

            continue;
        }

        if (!var_start)
        {
            var_start = p;
            var_len = 0;

            continue;
        }

        if (!var_len)
        {
            /* just an escaped % */
            if (output)
                *output++ = '%';
            len += 1;

            var_start = NULL;
            continue;
        }

        substitution = FUNC0(inf, var_start + 1, var_len);
        if (!substitution)
        {
            if (output)
            {
                FUNC1(output, var_start, var_len + 2);
                output += var_len + 2;
            }
            len += var_len + 2;
        }
        else
        {
            int sub_len = FUNC2(substitution);

            if (output)
            {
                FUNC1(output, substitution, sub_len);
                output += sub_len;
            }
            len += sub_len;
        }

         var_start = NULL;
    }

    if (output) *output = 0;
    return len + 1;
}