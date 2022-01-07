
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long npy_uint64 ;
typedef scalar_t__ npy_uint32 ;
struct TYPE_3__ {int length; scalar_t__* blocks; } ;
typedef TYPE_1__ BigInt ;


 int DEBUG_ASSERT (int) ;
 unsigned long long bitmask_u64 (int) ;
 scalar_t__ c_BigInt_MaxBlocks ;

__attribute__((used)) static void
BigInt_Multiply10(BigInt *result)
{

    npy_uint64 carry = 0;

    npy_uint32 *cur = result->blocks;
    npy_uint32 *end = result->blocks + result->length;
    for ( ; cur != end; ++cur) {
        npy_uint64 product = (npy_uint64)(*cur) * 10ull + carry;
        (*cur) = (npy_uint32)(product & bitmask_u64(32));
        carry = product >> 32;
    }

    if (carry != 0) {

        DEBUG_ASSERT(result->length + 1 <= c_BigInt_MaxBlocks);
        *cur = (npy_uint32)carry;
        ++result->length;
    }
}
