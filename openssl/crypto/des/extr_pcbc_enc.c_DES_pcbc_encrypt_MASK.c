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
typedef  int /*<<< orphan*/  DES_key_schedule ;
typedef  unsigned char* DES_cblock ;
typedef  int DES_LONG ;

/* Variables and functions */
 int /*<<< orphan*/  DES_DECRYPT ; 
 int /*<<< orphan*/  DES_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,int,int,long) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,unsigned char*,long) ; 

void FUNC5(const unsigned char *input, unsigned char *output,
                      long length, DES_key_schedule *schedule,
                      DES_cblock *ivec, int enc)
{
    register DES_LONG sin0, sin1, xor0, xor1, tout0, tout1;
    DES_LONG tin[2];
    const unsigned char *in;
    unsigned char *out, *iv;

    in = input;
    out = output;
    iv = &(*ivec)[0];

    if (enc) {
        FUNC1(iv, xor0);
        FUNC1(iv, xor1);
        for (; length > 0; length -= 8) {
            if (length >= 8) {
                FUNC1(in, sin0);
                FUNC1(in, sin1);
            } else
                FUNC2(in, sin0, sin1, length);
            tin[0] = sin0 ^ xor0;
            tin[1] = sin1 ^ xor1;
            FUNC0((DES_LONG *)tin, schedule, DES_ENCRYPT);
            tout0 = tin[0];
            tout1 = tin[1];
            xor0 = sin0 ^ tout0;
            xor1 = sin1 ^ tout1;
            FUNC3(tout0, out);
            FUNC3(tout1, out);
        }
    } else {
        FUNC1(iv, xor0);
        FUNC1(iv, xor1);
        for (; length > 0; length -= 8) {
            FUNC1(in, sin0);
            FUNC1(in, sin1);
            tin[0] = sin0;
            tin[1] = sin1;
            FUNC0((DES_LONG *)tin, schedule, DES_DECRYPT);
            tout0 = tin[0] ^ xor0;
            tout1 = tin[1] ^ xor1;
            if (length >= 8) {
                FUNC3(tout0, out);
                FUNC3(tout1, out);
            } else
                FUNC4(tout0, tout1, out, length);
            xor0 = tout0 ^ sin0;
            xor1 = tout1 ^ sin1;
        }
    }
    tin[0] = tin[1] = 0;
    sin0 = sin1 = xor0 = xor1 = tout0 = tout1 = 0;
}