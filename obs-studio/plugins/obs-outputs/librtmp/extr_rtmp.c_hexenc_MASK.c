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
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(unsigned char *inbuf, int len, char *dst)
{
    char *ptr = dst;
    while(len--)
    {
        FUNC0(ptr, "%02x", *inbuf++);
        ptr += 2;
    }
    *ptr = '\0';
}