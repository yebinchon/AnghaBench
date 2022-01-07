
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int npy_uint32 ;
struct TYPE_3__ {int* blocks; int length; } ;
typedef TYPE_1__ BigInt ;


 int DEBUG_ASSERT (int) ;
 int c_BigInt_MaxBlocks ;

__attribute__((used)) static inline void
BigInt_Pow2(BigInt *result, npy_uint32 exponent)
{
    npy_uint32 bitIdx;
    npy_uint32 blockIdx = exponent / 32;
    npy_uint32 i;

    DEBUG_ASSERT(blockIdx < c_BigInt_MaxBlocks);

    for (i = 0; i <= blockIdx; ++i) {
        result->blocks[i] = 0;
    }

    result->length = blockIdx + 1;

    bitIdx = (exponent % 32);
    result->blocks[blockIdx] |= ((npy_uint32)1 << bitIdx);
}
