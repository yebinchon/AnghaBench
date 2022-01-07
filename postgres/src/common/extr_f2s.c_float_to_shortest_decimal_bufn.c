
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int floating_decimal_32 ;


 int const FLOAT_EXPONENT_BITS ;
 int const FLOAT_MANTISSA_BITS ;
 int copy_special_str (char*,int const,int,int) ;
 int f2d (int const,int const) ;
 int f2d_small_int (int const,int const,int *) ;
 int float_to_bits (float) ;
 int to_chars (int ,int const,char*) ;

int
float_to_shortest_decimal_bufn(float f, char *result)
{




 const uint32 bits = float_to_bits(f);


 const bool ieeeSign = ((bits >> (FLOAT_MANTISSA_BITS + FLOAT_EXPONENT_BITS)) & 1) != 0;
 const uint32 ieeeMantissa = bits & ((1u << FLOAT_MANTISSA_BITS) - 1);
 const uint32 ieeeExponent = (bits >> FLOAT_MANTISSA_BITS) & ((1u << FLOAT_EXPONENT_BITS) - 1);


 if (ieeeExponent == ((1u << FLOAT_EXPONENT_BITS) - 1u) || (ieeeExponent == 0 && ieeeMantissa == 0))
 {
  return copy_special_str(result, ieeeSign, (ieeeExponent != 0), (ieeeMantissa != 0));
 }

 floating_decimal_32 v;
 const bool isSmallInt = f2d_small_int(ieeeMantissa, ieeeExponent, &v);

 if (!isSmallInt)
 {
  v = f2d(ieeeMantissa, ieeeExponent);
 }

 return to_chars(v, ieeeSign, result);
}
