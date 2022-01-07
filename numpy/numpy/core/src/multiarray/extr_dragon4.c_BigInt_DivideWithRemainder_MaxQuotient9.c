
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int npy_uint64 ;
typedef int npy_uint32 ;
struct TYPE_6__ {int length; int* blocks; } ;
typedef TYPE_1__ BigInt ;


 scalar_t__ BigInt_Compare (TYPE_1__*,TYPE_1__ const*) ;
 int DEBUG_ASSERT (int) ;
 int bitmask_u64 (int) ;

__attribute__((used)) static npy_uint32
BigInt_DivideWithRemainder_MaxQuotient9(BigInt *dividend, const BigInt *divisor)
{
    npy_uint32 length, quotient;
    const npy_uint32 *finalDivisorBlock;
    npy_uint32 *finalDividendBlock;





    DEBUG_ASSERT(!divisor->length == 0 &&
                divisor->blocks[divisor->length-1] >= 8 &&
                divisor->blocks[divisor->length-1] < bitmask_u64(32) &&
                dividend->length <= divisor->length);





    length = divisor->length;
    if (dividend->length < divisor->length) {
        return 0;
    }

    finalDivisorBlock = divisor->blocks + length - 1;
    finalDividendBlock = dividend->blocks + length - 1;





    quotient = *finalDividendBlock / (*finalDivisorBlock + 1);
    DEBUG_ASSERT(quotient <= 9);


    if (quotient != 0) {

        const npy_uint32 *divisorCur = divisor->blocks;
        npy_uint32 *dividendCur = dividend->blocks;

        npy_uint64 borrow = 0;
        npy_uint64 carry = 0;
        do {
            npy_uint64 difference, product;

            product = (npy_uint64)*divisorCur * (npy_uint64)quotient + carry;
            carry = product >> 32;

            difference = (npy_uint64)*dividendCur
                       - (product & bitmask_u64(32)) - borrow;
            borrow = (difference >> 32) & 1;

            *dividendCur = difference & bitmask_u64(32);

            ++divisorCur;
            ++dividendCur;
        } while(divisorCur <= finalDivisorBlock);


        while (length > 0 && dividend->blocks[length - 1] == 0) {
            --length;
        }

        dividend->length = length;
    }






    if (BigInt_Compare(dividend, divisor) >= 0) {

        const npy_uint32 *divisorCur = divisor->blocks;
        npy_uint32 *dividendCur = dividend->blocks;
        npy_uint64 borrow = 0;

        ++quotient;

        do {
            npy_uint64 difference = (npy_uint64)*dividendCur
                                  - (npy_uint64)*divisorCur - borrow;
            borrow = (difference >> 32) & 1;

            *dividendCur = difference & bitmask_u64(32);

            ++divisorCur;
            ++dividendCur;
        } while(divisorCur <= finalDivisorBlock);


        while (length > 0 && dividend->blocks[length - 1] == 0) {
            --length;
        }

        dividend->length = length;
    }

    return quotient;
}
