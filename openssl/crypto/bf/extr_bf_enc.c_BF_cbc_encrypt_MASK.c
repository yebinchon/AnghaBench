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
typedef  int BF_LONG ;
typedef  int /*<<< orphan*/  BF_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,unsigned char*,long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char const*,int,int,long) ; 

void FUNC6(const unsigned char *in, unsigned char *out, long length,
                    const BF_KEY *schedule, unsigned char *ivec, int encrypt)
{
    register BF_LONG tin0, tin1;
    register BF_LONG tout0, tout1, xor0, xor1;
    register long l = length;
    BF_LONG tin[2];

    if (encrypt) {
        FUNC4(ivec, tout0);
        FUNC4(ivec, tout1);
        ivec -= 8;
        for (l -= 8; l >= 0; l -= 8) {
            FUNC4(in, tin0);
            FUNC4(in, tin1);
            tin0 ^= tout0;
            tin1 ^= tout1;
            tin[0] = tin0;
            tin[1] = tin1;
            FUNC1(tin, schedule);
            tout0 = tin[0];
            tout1 = tin[1];
            FUNC2(tout0, out);
            FUNC2(tout1, out);
        }
        if (l != -8) {
            FUNC5(in, tin0, tin1, l + 8);
            tin0 ^= tout0;
            tin1 ^= tout1;
            tin[0] = tin0;
            tin[1] = tin1;
            FUNC1(tin, schedule);
            tout0 = tin[0];
            tout1 = tin[1];
            FUNC2(tout0, out);
            FUNC2(tout1, out);
        }
        FUNC2(tout0, ivec);
        FUNC2(tout1, ivec);
    } else {
        FUNC4(ivec, xor0);
        FUNC4(ivec, xor1);
        ivec -= 8;
        for (l -= 8; l >= 0; l -= 8) {
            FUNC4(in, tin0);
            FUNC4(in, tin1);
            tin[0] = tin0;
            tin[1] = tin1;
            FUNC0(tin, schedule);
            tout0 = tin[0] ^ xor0;
            tout1 = tin[1] ^ xor1;
            FUNC2(tout0, out);
            FUNC2(tout1, out);
            xor0 = tin0;
            xor1 = tin1;
        }
        if (l != -8) {
            FUNC4(in, tin0);
            FUNC4(in, tin1);
            tin[0] = tin0;
            tin[1] = tin1;
            FUNC0(tin, schedule);
            tout0 = tin[0] ^ xor0;
            tout1 = tin[1] ^ xor1;
            FUNC3(tout0, tout1, out, l + 8);
            xor0 = tin0;
            xor1 = tin1;
        }
        FUNC2(xor0, ivec);
        FUNC2(xor1, ivec);
    }
    tin0 = tin1 = tout0 = tout1 = xor0 = xor1 = 0;
    tin[0] = tin[1] = 0;
}