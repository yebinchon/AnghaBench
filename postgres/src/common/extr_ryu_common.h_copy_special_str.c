
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char* const,char*,int) ;

__attribute__((used)) static inline int
copy_special_str(char *const result, const bool sign, const bool exponent, const bool mantissa)
{
 if (mantissa)
 {
  memcpy(result, "NaN", 3);
  return 3;
 }
 if (sign)
 {
  result[0] = '-';
 }
 if (exponent)
 {
  memcpy(result + sign, "Infinity", 8);
  return sign + 8;
 }
 result[sign] = '0';
 return sign + 1;
}
