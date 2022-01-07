
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef scalar_t__ uint32 ;
typedef int int32 ;
struct TYPE_3__ {scalar_t__ mantissa; scalar_t__ exponent; } ;
typedef TYPE_1__ floating_decimal_64 ;


 int DOUBLE_BIAS ;
 int const DOUBLE_MANTISSA_BITS ;
 int const UINT64CONST (int) ;

__attribute__((used)) static inline bool
d2d_small_int(const uint64 ieeeMantissa,
     const uint32 ieeeExponent,
     floating_decimal_64 *v)
{
 const int32 e2 = (int32) ieeeExponent - DOUBLE_BIAS - DOUBLE_MANTISSA_BITS;






 if (e2 >= -DOUBLE_MANTISSA_BITS && e2 <= 0)
 {
  const uint64 mask = (UINT64CONST(1) << -e2) - 1;
  const uint64 fraction = ieeeMantissa & mask;

  if (fraction == 0)
  {






   const uint64 m2 = (UINT64CONST(1) << DOUBLE_MANTISSA_BITS) | ieeeMantissa;

   v->mantissa = m2 >> -e2;
   v->exponent = 0;
   return 1;
  }
 }

 return 0;
}
