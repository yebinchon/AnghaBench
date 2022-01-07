
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int npy_uint64 ;
typedef int npy_uint32 ;
struct TYPE_4__ {int* blocks; int length; } ;
typedef TYPE_1__ BigInt ;


 int DEBUG_ASSERT (int) ;
 int bitmask_u64 (int) ;
 scalar_t__ c_BigInt_MaxBlocks ;

__attribute__((used)) static void
BigInt_Multiply_int(BigInt *result, const BigInt *lhs, npy_uint32 rhs)
{

    npy_uint32 carry = 0;
    npy_uint32 *resultCur = result->blocks;
    const npy_uint32 *pLhsCur = lhs->blocks;
    const npy_uint32 *pLhsEnd = lhs->blocks + lhs->length;
    for ( ; pLhsCur != pLhsEnd; ++pLhsCur, ++resultCur) {
        npy_uint64 product = (npy_uint64)(*pLhsCur) * rhs + carry;
        *resultCur = (npy_uint32)(product & bitmask_u64(32));
        carry = product >> 32;
    }


    if (carry != 0) {

        DEBUG_ASSERT(lhs->length + 1 <= c_BigInt_MaxBlocks);
        *resultCur = (npy_uint32)carry;
        result->length = lhs->length + 1;
    }
    else {
        result->length = lhs->length;
    }
}
