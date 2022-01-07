
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint32 ;
typedef scalar_t__ npy_int32 ;
typedef int npy_bool ;
typedef scalar_t__ TrimMode ;
typedef scalar_t__ DigitMode ;
typedef int BigInt ;


 int CutoffMode_TotalLength ;
 int DEBUG_ASSERT (int) ;
 scalar_t__ DigitMode_Unique ;
 scalar_t__ Dragon4 (int *,scalar_t__,int,int ,scalar_t__,int ,scalar_t__,char*,int,scalar_t__*) ;
 scalar_t__ TrimMode_DptZeros ;
 scalar_t__ TrimMode_LeaveOneZero ;
 scalar_t__ TrimMode_None ;
 int memcpy (char*,char*,scalar_t__) ;
 int memmove (char*,char*,scalar_t__) ;

__attribute__((used)) static npy_uint32
FormatScientific (char *buffer, npy_uint32 bufferSize, BigInt *mantissa,
                  npy_int32 exponent, char signbit, npy_uint32 mantissaBit,
                  npy_bool hasUnequalMargins, DigitMode digit_mode,
                  npy_int32 precision, TrimMode trim_mode,
                  npy_int32 digits_left, npy_int32 exp_digits)
{
    npy_int32 printExponent;
    npy_int32 numDigits;
    char *pCurOut;
    npy_int32 numFractionDigits;
    npy_int32 leftchars;

    if (digit_mode != DigitMode_Unique) {
        DEBUG_ASSERT(precision >= 0);
    }


    DEBUG_ASSERT(bufferSize > 0);

    pCurOut = buffer;


    leftchars = 1 + (signbit == '-' || signbit == '+');
    if (digits_left > leftchars) {
        int i;
        for (i = 0; i < digits_left - leftchars && bufferSize > 1; i++) {
            *pCurOut = ' ';
            pCurOut++;
            --bufferSize;
        }
    }

    if (signbit == '+' && bufferSize > 1) {
        *pCurOut = '+';
        pCurOut++;
        --bufferSize;
    }
    else if (signbit == '-' && bufferSize > 1) {
        *pCurOut = '-';
        pCurOut++;
        --bufferSize;
    }

    numDigits = Dragon4(mantissa, exponent, mantissaBit, hasUnequalMargins,
                        digit_mode, CutoffMode_TotalLength, precision + 1,
                        pCurOut, bufferSize, &printExponent);

    DEBUG_ASSERT(numDigits > 0);
    DEBUG_ASSERT(numDigits <= bufferSize);


    if (bufferSize > 1) {
        pCurOut += 1;
        bufferSize -= 1;
    }


    numFractionDigits = numDigits-1;
    if (numFractionDigits > 0 && bufferSize > 1) {
        npy_int32 maxFractionDigits = (npy_int32)bufferSize - 2;

        if (numFractionDigits > maxFractionDigits) {
            numFractionDigits = maxFractionDigits;
        }

        memmove(pCurOut + 1, pCurOut, numFractionDigits);
        pCurOut[0] = '.';
        pCurOut += (1 + numFractionDigits);
        bufferSize -= (1 + numFractionDigits);
    }


    if (trim_mode != TrimMode_DptZeros && numFractionDigits == 0 &&
            bufferSize > 1) {
        *pCurOut = '.';
        ++pCurOut;
        --bufferSize;
    }

    if (trim_mode == TrimMode_LeaveOneZero) {

        if (numFractionDigits == 0 && bufferSize > 1) {
            *pCurOut = '0';
            ++pCurOut;
            --bufferSize;
            ++numFractionDigits;
        }
    }
    else if (trim_mode == TrimMode_None &&
            digit_mode != DigitMode_Unique) {

        if (precision > (npy_int32)numFractionDigits) {
            char *pEnd;

            npy_int32 numZeros = (precision - numFractionDigits);

            if (numZeros > (npy_int32)bufferSize - 1) {
                numZeros = (npy_int32)bufferSize - 1;
            }

            for (pEnd = pCurOut + numZeros; pCurOut < pEnd; ++pCurOut) {
                *pCurOut = '0';
                ++numFractionDigits;
            }
        }
    }






    if (precision >= 0 && trim_mode != TrimMode_None && numFractionDigits > 0) {
        --pCurOut;
        while (*pCurOut == '0') {
            --pCurOut;
            ++bufferSize;
            --numFractionDigits;
        }
        if (trim_mode == TrimMode_LeaveOneZero && *pCurOut == '.') {
            ++pCurOut;
            *pCurOut = '0';
            --bufferSize;
            ++numFractionDigits;
        }
        ++pCurOut;
    }


    if (bufferSize > 1) {
        char exponentBuffer[7];
        npy_int32 digits[5];
        npy_int32 i, exp_size, count;

        if (exp_digits > 5) {
            exp_digits = 5;
        }
        if (exp_digits < 0) {
            exp_digits = 2;
        }

        exponentBuffer[0] = 'e';
        if (printExponent >= 0) {
            exponentBuffer[1] = '+';
        }
        else {
            exponentBuffer[1] = '-';
            printExponent = -printExponent;
        }

        DEBUG_ASSERT(printExponent < 100000);


        for (i = 0; i < 5; i++) {
            digits[i] = printExponent % 10;
            printExponent /= 10;
        }

        for (i = 5; i > exp_digits && digits[i-1] == 0; i--) {
        }
        exp_size = i;

        for (i = exp_size; i > 0; i--) {
            exponentBuffer[2 + (exp_size-i)] = (char)('0' + digits[i-1]);
        }


        count = exp_size + 2;
        if (count > (npy_int32)bufferSize - 1) {
            count = (npy_int32)bufferSize - 1;
        }
        memcpy(pCurOut, exponentBuffer, count);
        pCurOut += count;
        bufferSize -= count;
    }


    DEBUG_ASSERT(bufferSize > 0);
    pCurOut[0] = '\0';

    return pCurOut - buffer;
}
