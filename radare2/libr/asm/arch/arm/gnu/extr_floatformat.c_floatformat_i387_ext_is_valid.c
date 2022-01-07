
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floatformat {int exp_len; int man_start; int totalsize; int byteorder; int exp_start; } ;


 unsigned long get_field (unsigned char const*,int ,int ,int ,int) ;

__attribute__((used)) static int
floatformat_i387_ext_is_valid (const struct floatformat *fmt, const void *from)
{




  unsigned long exponent, int_bit;
  const unsigned char *ufrom = (const unsigned char *) from;

  exponent = get_field (ufrom, fmt->byteorder, fmt->totalsize,
   fmt->exp_start, fmt->exp_len);
  int_bit = get_field (ufrom, fmt->byteorder, fmt->totalsize,
         fmt->man_start, 1);

  if ((exponent == 0) != (int_bit == 0)) {
   return 0;
  } else {
   return 1;
  }
}
