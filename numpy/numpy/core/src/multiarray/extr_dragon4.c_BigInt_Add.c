
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int npy_uint64 ;
typedef scalar_t__ npy_uint32 ;
struct TYPE_5__ {scalar_t__ length; scalar_t__* blocks; } ;
typedef TYPE_1__ BigInt ;


 int DEBUG_ASSERT (int) ;
 int bitmask_u64 (int) ;
 scalar_t__ c_BigInt_MaxBlocks ;

__attribute__((used)) static void
BigInt_Add(BigInt *result, const BigInt *lhs, const BigInt *rhs)
{

    const BigInt *large, *small;
    npy_uint64 carry = 0;
    const npy_uint32 *largeCur, *smallCur, *largeEnd, *smallEnd;
    npy_uint32 *resultCur;

    if (lhs->length < rhs->length) {
        small = lhs;
        large = rhs;
    }
    else {
        small = rhs;
        large = lhs;
    }


    result->length = large->length;


    largeCur = large->blocks;
    largeEnd = largeCur + large->length;
    smallCur = small->blocks;
    smallEnd = smallCur + small->length;
    resultCur = result->blocks;
    while (smallCur != smallEnd) {
        npy_uint64 sum = carry + (npy_uint64)(*largeCur) +
                                 (npy_uint64)(*smallCur);
        carry = sum >> 32;
        *resultCur = sum & bitmask_u64(32);
        ++largeCur;
        ++smallCur;
        ++resultCur;
    }


    while (largeCur != largeEnd) {
        npy_uint64 sum = carry + (npy_uint64)(*largeCur);
        carry = sum >> 32;
        (*resultCur) = sum & bitmask_u64(32);
        ++largeCur;
        ++resultCur;
    }


    if (carry != 0) {
        DEBUG_ASSERT(carry == 1);
        DEBUG_ASSERT((npy_uint32)(resultCur - result->blocks) ==
               large->length && (large->length < c_BigInt_MaxBlocks));
        *resultCur = 1;
        result->length = large->length + 1;
    }
    else {
        result->length = large->length;
    }
}
