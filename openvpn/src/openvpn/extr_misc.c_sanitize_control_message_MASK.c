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
 int /*<<< orphan*/  D_SHOW_KEYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__,int,struct gc_arena*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 

const char *
FUNC4(const char *src, struct gc_arena *gc)
{
    char *ret = FUNC1(FUNC2(src)+1, false, gc);
    char *dest = ret;
    bool redact = false;
    int skip = 0;

    for (;; )
    {
        const char c = *src;
        if (c == '\0')
        {
            break;
        }
        if (c == 'S' && !FUNC3(src, "SESS_ID_", 8))
        {
            skip = 7;
            redact = true;
        }
        else if (c == 'e' && !FUNC3(src, "echo ", 5))
        {
            skip = 4;
            redact = true;
        }
        else if (!FUNC0(D_SHOW_KEYS)
                 && (c == 'a' && !FUNC3(src, "auth-token ", 11)))
        {
            /* Unless --verb is 7 or higher (D_SHOW_KEYS), hide
             * the auth-token value coming in the src string
             */
            skip = 10;
            redact = true;
        }

        if (c == ',') /* end of redacted item? */
        {
            skip = 0;
            redact = false;
        }

        if (redact)
        {
            if (skip > 0)
            {
                --skip;
                *dest++ = c;
            }
        }
        else
        {
            *dest++ = c;
        }

        ++src;
    }
    *dest = '\0';
    return ret;
}