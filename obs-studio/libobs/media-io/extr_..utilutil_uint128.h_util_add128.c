
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int low; int high; void** i32; } ;
typedef TYPE_1__ util_uint128_t ;
typedef int uint64_t ;
typedef void* uint32_t ;



__attribute__((used)) static inline util_uint128_t util_add128(util_uint128_t a, util_uint128_t b)
{
 util_uint128_t out;
 uint64_t val;

 val = (a.low & 0xFFFFFFFFULL) + (b.low & 0xFFFFFFFFULL);
 out.i32[0] = (uint32_t)(val & 0xFFFFFFFFULL);
 val >>= 32;

 val += (a.low >> 32) + (b.low >> 32);
 out.i32[1] = (uint32_t)val;
 val >>= 32;

 val += (a.high & 0xFFFFFFFFULL) + (b.high & 0xFFFFFFFFULL);
 out.i32[2] = (uint32_t)(val & 0xFFFFFFFFULL);
 val >>= 32;

 val += (a.high >> 32) + (b.high >> 32);
 out.i32[3] = (uint32_t)val;

 return out;
}
