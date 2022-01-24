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
 unsigned int const NM_QUOTE_HINT ; 
 int /*<<< orphan*/  FUNC0 (int const,char*,char*,int const,char*,char*) ; 
 int FUNC1 (char const**) ; 

__attribute__((used)) static bool
FUNC2(const int msglevel,
                    char *p[],
                    const int max,
                    const unsigned int flags)
{
    const int len = FUNC1((const char **)p);

    if (!len)
    {
        return false;
    }

    if (len > max)
    {
        FUNC0(msglevel, "the --%s directive should have at most %d parameter%s.%s",
            p[0],
            max - 1,
            max >= 3 ? "s" : "",
            (flags & NM_QUOTE_HINT) ? "  To pass a list of arguments as one of the parameters, try enclosing them in double quotes (\"\")." : "");
        return false;
    }
    else
    {
        return true;
    }
}