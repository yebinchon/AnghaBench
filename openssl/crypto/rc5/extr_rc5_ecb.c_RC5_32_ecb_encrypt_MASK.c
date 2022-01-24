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
typedef  int /*<<< orphan*/  RC5_32_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned char*) ; 

void FUNC4(const unsigned char *in, unsigned char *out,
                        RC5_32_KEY *ks, int encrypt)
{
    unsigned long l, d[2];

    FUNC2(in, l);
    d[0] = l;
    FUNC2(in, l);
    d[1] = l;
    if (encrypt)
        FUNC1(d, ks);
    else
        FUNC0(d, ks);
    l = d[0];
    FUNC3(l, out);
    l = d[1];
    FUNC3(l, out);
    l = d[0] = d[1] = 0;
}