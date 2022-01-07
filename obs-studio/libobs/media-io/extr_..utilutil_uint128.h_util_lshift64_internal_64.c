
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int high; scalar_t__ low; } ;
typedef TYPE_1__ util_uint128_t ;
typedef int uint64_t ;



__attribute__((used)) static inline util_uint128_t util_lshift64_internal_64(uint64_t a)
{
 util_uint128_t val;
 val.low = 0;
 val.high = a;
 return val;
}
