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
 int /*<<< orphan*/  FUNC3 (unsigned char const*,unsigned long,unsigned long,long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long,unsigned char*,long) ; 

void FUNC6(const unsigned char *in, unsigned char *out,
                        long length, RC5_32_KEY *ks, unsigned char *iv,
                        int encrypt)
{
    register unsigned long tin0, tin1;
    register unsigned long tout0, tout1, xor0, xor1;
    register long l = length;
    unsigned long tin[2];

    if (encrypt) {
        FUNC2(iv, tout0);
        FUNC2(iv, tout1);
        iv -= 8;
        for (l -= 8; l >= 0; l -= 8) {
            FUNC2(in, tin0);
            FUNC2(in, tin1);
            tin0 ^= tout0;
            tin1 ^= tout1;
            tin[0] = tin0;
            tin[1] = tin1;
            FUNC1(tin, ks);
            tout0 = tin[0];
            FUNC4(tout0, out);
            tout1 = tin[1];
            FUNC4(tout1, out);
        }
        if (l != -8) {
            FUNC3(in, tin0, tin1, l + 8);
            tin0 ^= tout0;
            tin1 ^= tout1;
            tin[0] = tin0;
            tin[1] = tin1;
            FUNC1(tin, ks);
            tout0 = tin[0];
            FUNC4(tout0, out);
            tout1 = tin[1];
            FUNC4(tout1, out);
        }
        FUNC4(tout0, iv);
        FUNC4(tout1, iv);
    } else {
        FUNC2(iv, xor0);
        FUNC2(iv, xor1);
        iv -= 8;
        for (l -= 8; l >= 0; l -= 8) {
            FUNC2(in, tin0);
            tin[0] = tin0;
            FUNC2(in, tin1);
            tin[1] = tin1;
            FUNC0(tin, ks);
            tout0 = tin[0] ^ xor0;
            tout1 = tin[1] ^ xor1;
            FUNC4(tout0, out);
            FUNC4(tout1, out);
            xor0 = tin0;
            xor1 = tin1;
        }
        if (l != -8) {
            FUNC2(in, tin0);
            tin[0] = tin0;
            FUNC2(in, tin1);
            tin[1] = tin1;
            FUNC0(tin, ks);
            tout0 = tin[0] ^ xor0;
            tout1 = tin[1] ^ xor1;
            FUNC5(tout0, tout1, out, l + 8);
            xor0 = tin0;
            xor1 = tin1;
        }
        FUNC4(xor0, iv);
        FUNC4(xor1, iv);
    }
    tin0 = tin1 = tout0 = tout1 = xor0 = xor1 = 0;
    tin[0] = tin[1] = 0;
}