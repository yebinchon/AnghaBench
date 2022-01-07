
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floatformat {unsigned int exp_start; int exp_len; unsigned long exp_nan; unsigned int sign_start; int man_len; unsigned int man_start; int exp_bias; scalar_t__ intbit; int totalsize; int byteorder; } ;


 double INFINITY ;
 double NAN ;
 scalar_t__ floatformat_intbit_no ;
 long get_field (unsigned char const*,int ,int ,unsigned int,int) ;
 double ldexp (double,long) ;
 int mant_bits_set (struct floatformat const*,unsigned char const*) ;
 unsigned int min (int,int) ;

void
floatformat_to_double (const struct floatformat *fmt,
                       const void *from, double *to)
{
  const unsigned char *ufrom = (const unsigned char *) from;
  double dto;
  long exponent;
  unsigned long mant;
  unsigned int mant_bits, mant_off;
  int mant_bits_left;





  exponent = get_field (ufrom, fmt->byteorder, fmt->totalsize,
   fmt->exp_start, fmt->exp_len);




  if ((unsigned long) exponent == fmt->exp_nan)
    {
      int nan = mant_bits_set (fmt, ufrom);
      if (nan) {
       dto = NAN;
      } else {
       dto = INFINITY;
      }

      if (get_field (ufrom, fmt->byteorder, fmt->totalsize, fmt->sign_start, 1)) {
       dto = -dto;
      }

      *to = dto;

      return;
    }

  mant_bits_left = fmt->man_len;
  mant_off = fmt->man_start;
  dto = 0.0;





  if (exponent == 0) {
   exponent = 1 - fmt->exp_bias;
  } else {
   exponent -= fmt->exp_bias;





   if (fmt->intbit == floatformat_intbit_no) {
    dto = ldexp (1.0, exponent);
   } else {
    exponent++;
   }
    }

  while (mant_bits_left > 0)
    {
      mant_bits = min (mant_bits_left, 32);

      mant = get_field (ufrom, fmt->byteorder, fmt->totalsize,
    mant_off, mant_bits);

      dto += ldexp ((double) mant, exponent - mant_bits);
      exponent -= mant_bits;
      mant_off += mant_bits;
      mant_bits_left -= mant_bits;
    }


    if (get_field (ufrom, fmt->byteorder, fmt->totalsize, fmt->sign_start, 1)) {
     dto = -dto;
    }
    *to = dto;
}
