
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;
typedef int NumericDigit ;


 int DEC_DIGITS ;
 scalar_t__ NUMERIC_HDRSZ ;
 scalar_t__ VARHDRSZ ;

int32
numeric_maximum_size(int32 typmod)
{
 int precision;
 int numeric_digits;

 if (typmod < (int32) (VARHDRSZ))
  return -1;


 precision = ((typmod - VARHDRSZ) >> 16) & 0xffff;
 numeric_digits = (precision + 2 * (DEC_DIGITS - 1)) / DEC_DIGITS;
 return NUMERIC_HDRSZ + (numeric_digits * sizeof(NumericDigit));
}
