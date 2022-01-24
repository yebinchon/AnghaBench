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
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned
FUNC2(unsigned char *dst, size_t sizeof_dst, const char *src)
{
    size_t offset = 0;

    /* 'for all text characters' */
    while (*src) {
        const char *next_src;
        unsigned id;
        unsigned count;
        unsigned i;

        /* skip to next number */
        while (*src == '.')
            src++;

        /* parse integer */
        id = (unsigned)FUNC1(src, (char**)&next_src, 0);
        if (src == next_src)
            break; /* invalid integer, programming error */
        else
            src = next_src;

        /* find length of the integer */
        count = FUNC0(id);
        
        /* add binary integer to pattern */
        for (i=count; i>0; i--) {
            if (offset < sizeof_dst)
                dst[offset++] = ((id>>(7*i)) & 0x7F) | 0x80;
        }
        if (offset < sizeof_dst)
            dst[offset++] = (id & 0x7F);
    }

    return (unsigned)offset;
}