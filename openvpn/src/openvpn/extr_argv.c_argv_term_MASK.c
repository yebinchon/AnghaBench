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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 

__attribute__((used)) static char *
FUNC5(const char **f)
{
    const char *p = *f;
    const char *term = NULL;
    size_t termlen = 0;

    if (*p == '\0')
    {
        return NULL;
    }

    while (true)
    {
        const int c = *p;
        if (c == '\0')
        {
            break;
        }
        if (term)
        {
            if (!FUNC2(c))
            {
                ++termlen;
            }
            else
            {
                break;
            }
        }
        else
        {
            if (!FUNC2(c))
            {
                term = p;
                termlen = 1;
            }
        }
        ++p;
    }
    *f = p;

    if (term)
    {
        char *ret;
        FUNC0(termlen > 0);
        ret = FUNC3(termlen + 1);
        FUNC1(ret);
        FUNC4(ret, term, termlen);
        ret[termlen] = '\0';
        return ret;
    }
    else
    {
        return NULL;
    }
}