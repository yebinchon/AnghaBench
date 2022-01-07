
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef unsigned int int32 ;
struct TYPE_3__ {scalar_t__ mantissa; scalar_t__ exponent; } ;
typedef TYPE_1__ floating_decimal_32 ;


 unsigned int FLOAT_BIAS ;
 unsigned int const FLOAT_MANTISSA_BITS ;

__attribute__((used)) static inline bool
f2d_small_int(const uint32 ieeeMantissa,
     const uint32 ieeeExponent,
     floating_decimal_32 *v)
{
 const int32 e2 = (int32) ieeeExponent - FLOAT_BIAS - FLOAT_MANTISSA_BITS;






 if (e2 >= -FLOAT_MANTISSA_BITS && e2 <= 0)
 {
  const uint32 mask = (1U << -e2) - 1;
  const uint32 fraction = ieeeMantissa & mask;

  if (fraction == 0)
  {






   const uint32 m2 = (1U << FLOAT_MANTISSA_BITS) | ieeeMantissa;

   v->mantissa = m2 >> -e2;
   v->exponent = 0;
   return 1;
  }
 }

 return 0;
}
