
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int npy_uint32 ;
struct TYPE_3__ {int* blocks; int length; } ;
typedef TYPE_1__ BigInt ;


 int DEBUG_ASSERT (int) ;
 scalar_t__ c_BigInt_MaxBlocks ;

__attribute__((used)) static void
BigInt_Multiply2_inplace(BigInt *result)
{

    npy_uint32 carry = 0;

    npy_uint32 *cur = result->blocks;
    npy_uint32 *end = result->blocks + result->length;
    for ( ; cur != end; ++cur) {
        npy_uint32 tmpcur = *cur;
        *cur = (tmpcur << 1) | carry;
        carry = tmpcur >> 31;
    }

    if (carry != 0) {

        DEBUG_ASSERT(result->length + 1 <= c_BigInt_MaxBlocks);
        *cur = carry;
        ++result->length;
    }
}
