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
typedef  int npy_uint32 ;
typedef  int /*<<< orphan*/  BigInt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/ * g_PowerOf10_Big ; 
 int /*<<< orphan*/ * g_PowerOf10_U32 ; 

__attribute__((used)) static void
FUNC5(BigInt *in, npy_uint32 exponent, BigInt *temp)
{
    /* use two temporary values to reduce large integer copy operations */
    BigInt *curTemp, *pNextTemp;
    npy_uint32 smallExponent;
    npy_uint32 tableIdx = 0;

    /* make sure the exponent is within the bounds of the lookup table data */
    FUNC3(exponent < 8192);

    /*
     * initialize the result by looking up a 32-bit power of 10 corresponding to
     * the first 3 bits
     */
    smallExponent = exponent & FUNC4(3);
    if (smallExponent != 0) {
        FUNC2(temp, in, g_PowerOf10_U32[smallExponent]);
        curTemp = temp;
        pNextTemp = in;
    }
    else {
        curTemp = in;
        pNextTemp = temp;
    }

    /* remove the low bits that we used for the 32-bit lookup table */
    exponent >>= 3;

    /* while there are remaining bits in the exponent to be processed */
    while (exponent != 0) {
        /* if the current bit is set, multiply by this power of 10 */
        if (exponent & 1) {
            BigInt *pSwap;

            /* multiply into the next temporary */
            FUNC1(pNextTemp, curTemp, &g_PowerOf10_Big[tableIdx]);

            /* swap to the next temporary */
            pSwap = curTemp;
            curTemp = pNextTemp;
            pNextTemp = pSwap;
        }

        /* advance to the next bit */
        ++tableIdx;
        exponent >>= 1;
    }

    /* output the result */
    if (curTemp != in){
        FUNC0(in, curTemp);
    }
}