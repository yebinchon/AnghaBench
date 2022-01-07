
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int npy_uint32 ;
struct TYPE_4__ {int length; int* blocks; } ;
typedef TYPE_1__ BigInt ;



__attribute__((used)) static void
BigInt_Copy(BigInt *dst, const BigInt *src)
{
    npy_uint32 length = src->length;
    npy_uint32 * dstp = dst->blocks;
    const npy_uint32 *srcp;
    for (srcp = src->blocks; srcp != src->blocks + length; ++dstp, ++srcp) {
        *dstp = *srcp;
    }
    dst->length = length;
}
