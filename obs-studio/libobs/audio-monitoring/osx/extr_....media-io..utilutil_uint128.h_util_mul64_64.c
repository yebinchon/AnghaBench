
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int low; scalar_t__ high; } ;
typedef TYPE_1__ util_uint128_t ;
typedef int uint64_t ;


 TYPE_1__ util_add128 (TYPE_1__,int ) ;
 int util_lshift64_internal_32 (int) ;
 int util_lshift64_internal_64 (int) ;

__attribute__((used)) static inline util_uint128_t util_mul64_64(uint64_t a, uint64_t b)
{
 util_uint128_t out;
 uint64_t m;

 m = (a & 0xFFFFFFFFULL) * (b & 0xFFFFFFFFULL);
 out.low = m;
 out.high = 0;

 m = (a >> 32) * (b & 0xFFFFFFFFULL);
 out = util_add128(out, util_lshift64_internal_32(m));

 m = (a & 0xFFFFFFFFULL) * (b >> 32);
 out = util_add128(out, util_lshift64_internal_32(m));

 m = (a >> 32) * (b >> 32);
 out = util_add128(out, util_lshift64_internal_64(m));

 return out;
}
