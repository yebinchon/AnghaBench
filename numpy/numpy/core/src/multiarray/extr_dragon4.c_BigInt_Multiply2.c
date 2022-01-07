
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int npy_uint32 ;
struct TYPE_4__ {int* blocks; int length; } ;
typedef TYPE_1__ BigInt ;


 int DEBUG_ASSERT (int) ;
 scalar_t__ c_BigInt_MaxBlocks ;

__attribute__((used)) static void
BigInt_Multiply2(BigInt *result, const BigInt *in)
{

    npy_uint32 carry = 0;

    npy_uint32 *resultCur = result->blocks;
    const npy_uint32 *pLhsCur = in->blocks;
    const npy_uint32 *pLhsEnd = in->blocks + in->length;
    for ( ; pLhsCur != pLhsEnd; ++pLhsCur, ++resultCur) {
        npy_uint32 cur = *pLhsCur;
        *resultCur = (cur << 1) | carry;
        carry = cur >> 31;
    }

    if (carry != 0) {

        DEBUG_ASSERT(in->length + 1 <= c_BigInt_MaxBlocks);
        *resultCur = carry;
        result->length = in->length + 1;
    }
    else {
        result->length = in->length;
    }
}
