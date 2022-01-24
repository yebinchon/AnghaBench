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
struct BannerOutput {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct BannerOutput*,unsigned int,unsigned int) ; 

void
FUNC1(struct BannerOutput *banout, unsigned proto, unsigned c)
{
    if (c & ~0xFFFF) {
        unsigned c2;
        c2 = 0xF0 | ((c>>18)&0x03);
        FUNC0(banout, proto, c2);
        c2 = 0x80 | ((c>>12)&0x3F);
        FUNC0(banout, proto, c2);
        c2 = 0x80 | ((c>> 6)&0x3F);
        FUNC0(banout, proto, c2);
        c2 = 0x80 | ((c>> 0)&0x3F);
        FUNC0(banout, proto, c2);
    } else if (c & ~0x7FF) {
        unsigned c2;
        c2 = 0xE0 | ((c>>12)&0x0F);
        FUNC0(banout, proto, c2);
        c2 = 0x80 | ((c>> 6)&0x3F);
        FUNC0(banout, proto, c2);
        c2 = 0x80 | ((c>> 0)&0x3F);
        FUNC0(banout, proto, c2);
    } else if (c & ~0x7f) {
        unsigned c2;
        c2 = 0xc0 | ((c>> 6)&0x1F);
        FUNC0(banout, proto, c2);
        c2 = 0x80 | ((c>> 0)&0x3F);
        FUNC0(banout, proto, c2);
    } else
        FUNC0(banout, proto, c);
}