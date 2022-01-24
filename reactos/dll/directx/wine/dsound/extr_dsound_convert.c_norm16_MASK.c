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
typedef  int /*<<< orphan*/  SHORT ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(INT *src, SHORT *dst, unsigned len)
{
    FUNC0("%p - %p %d\n", src, dst, len);
    len /= 2;
    while (len--)
    {
        *dst = FUNC1(*src);
        if (*src <= -0x8000)
            *dst = FUNC1(0x8000);
        else if (*src > 0x7fff)
            *dst = FUNC1(0x7fff);
        ++dst;
        ++src;
    }
}