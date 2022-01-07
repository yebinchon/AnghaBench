
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int npy_uint32 ;
typedef int npy_int32 ;
typedef int npy_float32 ;
typedef int npy_bool ;
struct TYPE_7__ {scalar_t__ sign; } ;
struct TYPE_6__ {char* repr; int * bigints; } ;
typedef TYPE_1__ Dragon4_Scratch ;
typedef TYPE_2__ Dragon4_Options ;
typedef int BigInt ;


 int BigInt_Set_uint32 (int *,int) ;
 int Format_floatbits (char*,int,int *,int,char,int,int,TYPE_2__*) ;
 int LogBase2_32 (int) ;
 int NPY_FALSE ;
 int PrintInfNan (char*,int,int,int,char) ;
 int bitmask_u32 (int) ;

__attribute__((used)) static npy_uint32
Dragon4_PrintFloat_IEEE_binary32(
        Dragon4_Scratch *scratch, npy_float32 *value,
        Dragon4_Options *opt)
{
    char *buffer = scratch->repr;
    npy_uint32 bufferSize = sizeof(scratch->repr);
    BigInt *bigints = scratch->bigints;

    union
    {
        npy_float32 floatingPoint;
        npy_uint32 integer;
    } floatUnion;
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


    floatUnion.floatingPoint = *value;
    floatMantissa = floatUnion.integer & bitmask_u32(23);
    floatExponent = (floatUnion.integer >> 23) & bitmask_u32(8);
    floatSign = floatUnion.integer >> 31;


    if (floatSign != 0) {
        signbit = '-';
    }
    else if (opt->sign) {
        signbit = '+';
    }


    if (floatExponent == bitmask_u32(8)) {
        return PrintInfNan(buffer, bufferSize, floatMantissa, 6, signbit);
    }



    if (floatExponent != 0) {
        mantissa = (1UL << 23) | floatMantissa;
        exponent = floatExponent - 127 - 23;
        mantissaBit = 23;
        hasUnequalMargins = (floatExponent != 1) && (floatMantissa == 0);
    }
    else {
        mantissa = floatMantissa;
        exponent = 1 - 127 - 23;
        mantissaBit = LogBase2_32(mantissa);
        hasUnequalMargins = NPY_FALSE;
    }

    BigInt_Set_uint32(&bigints[0], mantissa);
    return Format_floatbits(buffer, bufferSize, bigints, exponent,
                           signbit, mantissaBit, hasUnequalMargins, opt);
}
