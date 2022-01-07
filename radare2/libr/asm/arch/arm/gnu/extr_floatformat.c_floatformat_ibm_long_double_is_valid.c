
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floatformat {unsigned int exp_start; int exp_len; unsigned long exp_nan; unsigned int man_len; unsigned int man_start; int totalsize; int byteorder; struct floatformat* split_half; } ;


 long get_field (unsigned char const*,int ,int ,unsigned int,int) ;
 int mant_bits_set (struct floatformat const*,unsigned char const*) ;

__attribute__((used)) static int
floatformat_ibm_long_double_is_valid (const struct floatformat *fmt,
          const void *from)
{
  const unsigned char *ufrom = (const unsigned char *) from;
  const struct floatformat *hfmt = fmt->split_half;
  long top_exp, bot_exp;
  int top_nan = 0;

  top_exp = get_field (ufrom, hfmt->byteorder, hfmt->totalsize,
         hfmt->exp_start, hfmt->exp_len);
  bot_exp = get_field (ufrom + 8, hfmt->byteorder, hfmt->totalsize,
         hfmt->exp_start, hfmt->exp_len);

  if ((unsigned long)top_exp == hfmt->exp_nan) {
   top_nan = mant_bits_set (hfmt, ufrom);
  }


  if (top_nan) {
   return 1;
  }



  if ((unsigned long) top_exp == hfmt->exp_nan || top_exp == 0)
    {
   if (bot_exp != 0) {
    return 0;
   }

   return !mant_bits_set (hfmt, ufrom + 8);
    }







    if (bot_exp < top_exp - 53) {
     return 1;
    }
    if (bot_exp > top_exp - 53 && bot_exp != 0) {
     return 0;
    }
    if (bot_exp == 0) {


     int first_bit = -1, second_bit = -1, cur_bit;
     for (cur_bit = 0; (unsigned int)cur_bit < hfmt->man_len; cur_bit++) {
      if (get_field (ufrom + 8, hfmt->byteorder, hfmt->totalsize,
    hfmt->man_start + cur_bit, 1)) {
       if (first_bit == -1) {
        first_bit = cur_bit;
       } else {
        second_bit = cur_bit;
        break;
       }
      }
     }

     if (first_bit == -1) {
      return 1;
     }

     if (-first_bit < top_exp - 53) {
      return 1;
     }
     if (-first_bit > top_exp - 53) {
      return 0;
     }



     if (second_bit != -1) {
      return 0;
     }
     return !get_field (ufrom, hfmt->byteorder, hfmt->totalsize,
      hfmt->man_start + hfmt->man_len - 1, 1);
    }
  else
    {



      if (get_field (ufrom, hfmt->byteorder, hfmt->totalsize,
    hfmt->man_start + hfmt->man_len - 1, 1)) {
       return 0;
      }
      return !mant_bits_set (hfmt, ufrom + 8);
    }
}
