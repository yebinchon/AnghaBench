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
 unsigned int FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,unsigned char*,int) ; 

__attribute__((used)) static unsigned
FUNC4(unsigned char *out_buf, size_t out_buf_len, unsigned xrand)
{
    unsigned char buf[16];
    unsigned crc;

    if (out_buf_len < 16)
        return 0;
    FUNC2(buf, 0, 16);

    FUNC1(&buf[4], "Lteg", 4); /* "getL" */

    buf[12] = (unsigned char)(xrand>>24);
    buf[13] = (unsigned char)(xrand>>16);
    buf[14] = (unsigned char)(xrand>> 8);
    buf[15] = (unsigned char)(xrand>> 0);

    crc = FUNC0(buf, 16);
    buf[3] = (unsigned char)(crc>>24);
    buf[2] = (unsigned char)(crc>>16);
    buf[1] = (unsigned char)(crc>> 8);
    buf[0] = (unsigned char)(crc>> 0);

    FUNC3(buf, 16, out_buf, 16);

    return 16;
}