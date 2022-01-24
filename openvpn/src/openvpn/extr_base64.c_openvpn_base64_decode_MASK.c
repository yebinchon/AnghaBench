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
 unsigned int DECODE_ERROR ; 
 int /*<<< orphan*/  base64_chars ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const) ; 
 unsigned int FUNC1 (char const*) ; 

int
FUNC2(const char *str, void *data, int size)
{
    const char *p;
    unsigned char *q;
    unsigned char *e = NULL;

    q = data;
    if (size >= 0)
    {
        e = q + size;
    }
    for (p = str; *p && (*p == '=' || FUNC0(base64_chars, *p)); p += 4)
    {
        unsigned int val = FUNC1(p);
        unsigned int marker = (val >> 24) & 0xff;
        if (val == DECODE_ERROR)
        {
            return -1;
        }
        if (e && q >= e)
        {
            return -1;
        }
        *q++ = (val >> 16) & 0xff;
        if (marker < 2)
        {
            if (e && q >= e)
            {
                return -1;
            }
            *q++ = (val >> 8) & 0xff;
        }
        if (marker < 1)
        {
            if (e && q >= e)
            {
                return -1;
            }
            *q++ = val & 0xff;
        }
    }
    return q - (unsigned char *) data;
}