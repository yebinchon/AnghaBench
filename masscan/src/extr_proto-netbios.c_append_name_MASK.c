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
 int /*<<< orphan*/  FUNC0 (unsigned char*,size_t,unsigned int*,char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char) ; 

__attribute__((used)) static void
FUNC3(unsigned char *banner, size_t banner_max, unsigned *banner_length, const unsigned char *name)
{
    unsigned i;
    unsigned char c;

    for (i=0; i<15; i++) {
        c = name[i];

        if (c == 0x20 || c == '\0')
            FUNC0(banner, banner_max, banner_length, ' ');
        else if (FUNC1(c) || FUNC2(c))
            FUNC0(banner, banner_max, banner_length, c);
        else {
            FUNC0(banner, banner_max, banner_length, '<');
            FUNC0(banner, banner_max, banner_length, "0123456789ABCDEF"[c>>4]);
            FUNC0(banner, banner_max, banner_length, "0123456789ABCDEF"[c&0xF]);
            FUNC0(banner, banner_max, banner_length, '>');
        }
    }

    c = name[i];
    FUNC0(banner, banner_max, banner_length, '<');
    FUNC0(banner, banner_max, banner_length, "0123456789ABCDEF"[c>>4]);
    FUNC0(banner, banner_max, banner_length, "0123456789ABCDEF"[c&0xF]);
    FUNC0(banner, banner_max, banner_length, '>');
    FUNC0(banner, banner_max, banner_length, '\n');
}