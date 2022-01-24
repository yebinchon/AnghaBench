#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int npy_uint32 ;
typedef  int npy_uint16 ;
typedef  int npy_int32 ;
typedef  int npy_half ;
typedef  int npy_bool ;
struct TYPE_7__ {scalar_t__ sign; } ;
struct TYPE_6__ {char* repr; int /*<<< orphan*/ * bigints; } ;
typedef  TYPE_1__ Dragon4_Scratch ;
typedef  TYPE_2__ Dragon4_Options ;
typedef  int /*<<< orphan*/  BigInt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (char*,int,int /*<<< orphan*/ *,int,char,int,int,TYPE_2__*) ; 
 int FUNC2 (int) ; 
 int NPY_FALSE ; 
 int FUNC3 (char*,int,int,int,char) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static npy_uint32
FUNC5(
        Dragon4_Scratch *scratch, npy_half *value, Dragon4_Options *opt)
{
    char *buffer = scratch->repr;
    npy_uint32 bufferSize = sizeof(scratch->repr);
    BigInt *bigints = scratch->bigints;

    npy_uint16 val = *value;
    npy_uint32 floatExponent, floatMantissa, floatSign;

    npy_uint32 mantissa;
    npy_int32 exponent;
    npy_uint32 mantissaBit;
    npy_bool hasUnequalMargins;
    char signbit = '\0';

    if (bufferSize == 0) {
        return 0;
    }

    if (bufferSize == 1) {
        buffer[0] = '\0';
        return 0;
    }

    /* deconstruct the floating point value */
    floatMantissa = val & FUNC4(10);
    floatExponent = (val >> 10) & FUNC4(5);
    floatSign = val >> 15;

    /* output the sign */
    if (floatSign != 0) {
        signbit = '-';
    }
    else if (opt->sign) {
        signbit = '+';
    }

    /* if this is a special value */
    if (floatExponent == FUNC4(5)) {
        return FUNC3(buffer, bufferSize, floatMantissa, 3, signbit);
    }
    /* else this is a number */

    /* factor the value into its parts */
    if (floatExponent != 0) {
        /*
         * normalized
         * The floating point equation is:
         *  value = (1 + mantissa/2^10) * 2 ^ (exponent-15)
         * We convert the integer equation by factoring a 2^10 out of the
         * exponent
         *  value = (1 + mantissa/2^10) * 2^10 * 2 ^ (exponent-15-10)
         *  value = (2^10 + mantissa) * 2 ^ (exponent-15-10)
         * Because of the implied 1 in front of the mantissa we have 10 bits of
         * precision.
         *   m = (2^10 + mantissa)
         *   e = (exponent-15-10)
         */
        mantissa            = (1UL << 10) | floatMantissa;
        exponent            = floatExponent - 15 - 10;
        mantissaBit         = 10;
        hasUnequalMargins   = (floatExponent != 1) && (floatMantissa == 0);
    }
    else {
        /*
         * denormalized
         * The floating point equation is:
         *  value = (mantissa/2^10) * 2 ^ (1-15)
         * We convert the integer equation by factoring a 2^23 out of the
         * exponent
         *  value = (mantissa/2^10) * 2^10 * 2 ^ (1-15-10)
         *  value = mantissa * 2 ^ (1-15-10)
         * We have up to 10 bits of precision.
         *   m = (mantissa)
         *   e = (1-15-10)
         */
        mantissa           = floatMantissa;
        exponent           = 1 - 15 - 10;
        mantissaBit        = FUNC2(mantissa);
        hasUnequalMargins  = NPY_FALSE;
    }

    FUNC0(&bigints[0], mantissa);
    return FUNC1(buffer, bufferSize, bigints, exponent,
                            signbit, mantissaBit, hasUnequalMargins, opt);
}