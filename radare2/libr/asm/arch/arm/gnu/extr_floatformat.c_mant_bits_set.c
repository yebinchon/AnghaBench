
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floatformat {unsigned int man_start; int man_len; int totalsize; int byteorder; } ;


 scalar_t__ get_field (unsigned char const*,int ,int ,unsigned int,unsigned int) ;
 unsigned int min (int,int) ;

__attribute__((used)) static int
mant_bits_set (const struct floatformat *fmt, const unsigned char *ufrom)
{
  unsigned int mant_bits, mant_off;
  int mant_bits_left;

  mant_off = fmt->man_start;
  mant_bits_left = fmt->man_len;
  while (mant_bits_left > 0)
    {
      mant_bits = min (mant_bits_left, 32);

      if (get_field (ufrom, fmt->byteorder, fmt->totalsize,
    mant_off, mant_bits) != 0) {
       return 1;
      }

      mant_off += mant_bits;
      mant_bits_left -= mant_bits;
    }
  return 0;
}
