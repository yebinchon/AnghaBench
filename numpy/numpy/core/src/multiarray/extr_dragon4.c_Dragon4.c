
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_1__ ;


typedef scalar_t__ npy_uint32 ;
typedef int npy_int32 ;
typedef double const npy_float64 ;
typedef int npy_bool ;
struct TYPE_28__ {int length; int* blocks; } ;
typedef scalar_t__ DigitMode ;
typedef scalar_t__ CutoffMode ;
typedef TYPE_1__ BigInt ;


 int BigInt_Add (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ BigInt_Compare (TYPE_1__*,TYPE_1__*) ;
 int BigInt_Copy (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ BigInt_DivideWithRemainder_MaxQuotient9 (TYPE_1__*,TYPE_1__*) ;
 int BigInt_IsEven (TYPE_1__*) ;
 scalar_t__ BigInt_IsZero (TYPE_1__*) ;
 int BigInt_Multiply (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int BigInt_Multiply10 (TYPE_1__*) ;
 int BigInt_Multiply2 (TYPE_1__*,TYPE_1__*) ;
 int BigInt_Multiply2_inplace (TYPE_1__*) ;
 int BigInt_MultiplyPow10 (TYPE_1__*,int,TYPE_1__*) ;
 int BigInt_Pow10 (TYPE_1__*,int,TYPE_1__*) ;
 int BigInt_Pow2 (TYPE_1__*,int const) ;
 int BigInt_Set_uint32 (TYPE_1__*,int) ;
 int BigInt_ShiftLeft (TYPE_1__*,int const) ;
 scalar_t__ const CutoffMode_FractionLength ;
 scalar_t__ const CutoffMode_TotalLength ;
 int DEBUG_ASSERT (int) ;
 scalar_t__ const DigitMode_Unique ;
 scalar_t__ LogBase2_32 (int) ;
 int NPY_FALSE ;
 scalar_t__ ceil (double const) ;

__attribute__((used)) static npy_uint32
Dragon4(BigInt *bigints, const npy_int32 exponent,
        const npy_uint32 mantissaBit, const npy_bool hasUnequalMargins,
        const DigitMode digitMode, const CutoffMode cutoffMode,
        npy_int32 cutoffNumber, char *pOutBuffer,
        npy_uint32 bufferSize, npy_int32 *pOutExponent)
{
    char *curDigit = pOutBuffer;
    BigInt *mantissa = &bigints[0];
    BigInt *scale = &bigints[1];
    BigInt *scaledValue = &bigints[2];
    BigInt *scaledMarginLow = &bigints[3];
    BigInt *scaledMarginHigh;
    BigInt *optionalMarginHigh = &bigints[4];

    BigInt *temp1 = &bigints[5];
    BigInt *temp2 = &bigints[6];

    const npy_float64 log10_2 = 0.30102999566398119521373889472449;
    npy_int32 digitExponent, cutoffExponent, hiBlock;
    npy_uint32 outputDigit;
    npy_uint32 outputLen;
    npy_bool isEven = BigInt_IsEven(mantissa);
    npy_int32 cmp;


    npy_bool low, high, roundDown;

    DEBUG_ASSERT(bufferSize > 0);


    if (BigInt_IsZero(mantissa)) {
        *curDigit = '0';
        *pOutExponent = 0;
        return 1;
    }

    BigInt_Copy(scaledValue, mantissa);

    if (hasUnequalMargins) {

        if (exponent > 0) {
            BigInt_ShiftLeft(scaledValue, exponent + 2);

            BigInt_Set_uint32(scale, 4);

            BigInt_Pow2(scaledMarginLow, exponent);

            BigInt_Pow2(optionalMarginHigh, exponent + 1);
        }

        else {






            BigInt_ShiftLeft(scaledValue, 2);

            BigInt_Pow2(scale, -exponent + 2);

            BigInt_Set_uint32(scaledMarginLow, 1);

            BigInt_Set_uint32(optionalMarginHigh, 2);
        }


        scaledMarginHigh = optionalMarginHigh;
    }
    else {

        if (exponent > 0) {

            BigInt_ShiftLeft(scaledValue, exponent + 1);

            BigInt_Set_uint32(scale, 2);

            BigInt_Pow2(scaledMarginLow, exponent);
        }

        else {






            BigInt_ShiftLeft(scaledValue, 1);

            BigInt_Pow2(scale, -exponent + 1);

            BigInt_Set_uint32(scaledMarginLow, 1);
        }


        scaledMarginHigh = scaledMarginLow;
    }
    digitExponent = (npy_int32)(
       ceil((npy_float64)((npy_int32)mantissaBit + exponent) * log10_2 - 0.69));
    if (cutoffNumber >= 0 && cutoffMode == CutoffMode_FractionLength &&
            digitExponent <= -cutoffNumber) {
        digitExponent = -cutoffNumber + 1;
    }



    if (digitExponent > 0) {

        BigInt_MultiplyPow10(scale, digitExponent, temp1);
    }
    else if (digitExponent < 0) {




        BigInt *temp=temp1, *pow10=temp2;
        BigInt_Pow10(pow10, -digitExponent, temp);

        BigInt_Multiply(temp, scaledValue, pow10);
        BigInt_Copy(scaledValue, temp);

        BigInt_Multiply(temp, scaledMarginLow, pow10);
        BigInt_Copy(scaledMarginLow, temp);

        if (scaledMarginHigh != scaledMarginLow) {
            BigInt_Multiply2(scaledMarginHigh, scaledMarginLow);
        }
    }


    if (BigInt_Compare(scaledValue, scale) >= 0) {





        digitExponent = digitExponent + 1;
    }
    else {





        BigInt_Multiply10(scaledValue);
        BigInt_Multiply10(scaledMarginLow);
        if (scaledMarginHigh != scaledMarginLow) {
            BigInt_Multiply2(scaledMarginHigh, scaledMarginLow);
        }
    }





    cutoffExponent = digitExponent - bufferSize;
    if (cutoffNumber >= 0) {
        npy_int32 desiredCutoffExponent;

        if (cutoffMode == CutoffMode_TotalLength) {
            desiredCutoffExponent = digitExponent - cutoffNumber;
            if (desiredCutoffExponent > cutoffExponent) {
                cutoffExponent = desiredCutoffExponent;
            }
        }



        else {
            desiredCutoffExponent = -cutoffNumber;
            if (desiredCutoffExponent > cutoffExponent) {
                cutoffExponent = desiredCutoffExponent;
            }
        }
    }


    *pOutExponent = digitExponent-1;
    DEBUG_ASSERT(scale->length > 0);
    hiBlock = scale->blocks[scale->length - 1];
    if (hiBlock < 8 || hiBlock > 429496729) {
        npy_uint32 hiBlockLog2, shift;
        hiBlockLog2 = LogBase2_32(hiBlock);
        DEBUG_ASSERT(hiBlockLog2 < 3 || hiBlockLog2 > 27);
        shift = (32 + 27 - hiBlockLog2) % 32;

        BigInt_ShiftLeft(scale, shift);
        BigInt_ShiftLeft(scaledValue, shift);
        BigInt_ShiftLeft(scaledMarginLow, shift);
        if (scaledMarginHigh != scaledMarginLow) {
            BigInt_Multiply2(scaledMarginHigh, scaledMarginLow);
        }
    }

    if (digitMode == DigitMode_Unique) {






        for (;;) {
            BigInt *scaledValueHigh = temp1;

            digitExponent = digitExponent-1;


            outputDigit =
                BigInt_DivideWithRemainder_MaxQuotient9(scaledValue, scale);
            DEBUG_ASSERT(outputDigit < 10);


            BigInt_Add(scaledValueHigh, scaledValue, scaledMarginHigh);





            cmp = BigInt_Compare(scaledValue, scaledMarginLow);
            low = isEven ? (cmp <= 0) : (cmp < 0);
            cmp = BigInt_Compare(scaledValueHigh, scale);
            high = isEven ? (cmp >= 0) : (cmp > 0);
            if (low | high | (digitExponent == cutoffExponent))
                break;


            *curDigit = (char)('0' + outputDigit);
            ++curDigit;


            BigInt_Multiply10(scaledValue);
            BigInt_Multiply10(scaledMarginLow);
            if (scaledMarginHigh != scaledMarginLow) {
                BigInt_Multiply2(scaledMarginHigh, scaledMarginLow);
            }
        }
    }
    else {





        low = NPY_FALSE;
        high = NPY_FALSE;

        for (;;) {
            digitExponent = digitExponent-1;


            outputDigit =
                BigInt_DivideWithRemainder_MaxQuotient9(scaledValue, scale);
            DEBUG_ASSERT(outputDigit < 10);

            if ((scaledValue->length == 0) |
                    (digitExponent == cutoffExponent)) {
                break;
            }


            *curDigit = (char)('0' + outputDigit);
            ++curDigit;


            BigInt_Multiply10(scaledValue);
        }
    }


    roundDown = low;


    if (low == high) {
        npy_int32 compare;
        BigInt_Multiply2_inplace(scaledValue);
        compare = BigInt_Compare(scaledValue, scale);
        roundDown = compare < 0;





        if (compare == 0) {
            roundDown = (outputDigit & 1) == 0;
        }
    }


    if (roundDown) {
        *curDigit = (char)('0' + outputDigit);
        ++curDigit;
    }
    else {

        if (outputDigit == 9) {

            for (;;) {

                if (curDigit == pOutBuffer) {

                    *curDigit = '1';
                    ++curDigit;
                    *pOutExponent += 1;
                    break;
                }

                --curDigit;
                if (*curDigit != '9') {

                    *curDigit += 1;
                    ++curDigit;
                    break;
                }
            }
        }
        else {

            *curDigit = (char)('0' + outputDigit + 1);
            ++curDigit;
        }
    }


    outputLen = (npy_uint32)(curDigit - pOutBuffer);
    DEBUG_ASSERT(outputLen <= bufferSize);
    return outputLen;
}
