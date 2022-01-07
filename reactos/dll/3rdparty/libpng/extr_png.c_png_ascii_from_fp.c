
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_const_structrp ;
typedef int* png_charp ;


 int DBL_DIG ;
 double DBL_MAX ;
 double DBL_MIN ;
 double floor (double) ;
 int frexp (double,int*) ;
 double modf (double,double*) ;
 int png_error (int ,char*) ;
 double png_pow10 (int) ;

void
png_ascii_from_fp(png_const_structrp png_ptr, png_charp ascii, size_t size,
    double fp, unsigned int precision)
{





   if (precision < 1)
      precision = DBL_DIG;


   if (precision > DBL_DIG+1)
      precision = DBL_DIG+1;


   if (size >= precision+5)
   {
      if (fp < 0)
      {
         fp = -fp;
         *ascii++ = 45;
         --size;
      }

      if (fp >= DBL_MIN && fp <= DBL_MAX)
      {
         int exp_b10;
         double base;
         (void)frexp(fp, &exp_b10);

         exp_b10 = (exp_b10 * 77) >> 8;


         base = png_pow10(exp_b10);

         while (base < DBL_MIN || base < fp)
         {

            double test = png_pow10(exp_b10+1);

            if (test <= DBL_MAX)
            {
               ++exp_b10; base = test;
            }

            else
               break;
         }
         fp /= base;
         while (fp >= 1)
         {
            fp /= 10; ++exp_b10;
         }







         {
            unsigned int czero, clead, cdigits;
            char exponent[10];




            if (exp_b10 < 0 && exp_b10 > -3)
            {
               czero = 0U-exp_b10;
               exp_b10 = 0;
            }
            else
               czero = 0;




            clead = czero;
            cdigits = 0;

            do
            {
               double d;

               fp *= 10;





               if (cdigits+czero+1 < precision+clead)
                  fp = modf(fp, &d);

               else
               {
                  d = floor(fp + .5);

                  if (d > 9)
                  {

                     if (czero > 0)
                     {
                        --czero; d = 1;
                        if (cdigits == 0) --clead;
                     }
                     else
                     {
                        while (cdigits > 0 && d > 9)
                        {
                           int ch = *--ascii;

                           if (exp_b10 != (-1))
                              ++exp_b10;

                           else if (ch == 46)
                           {
                              ch = *--ascii; ++size;




                              exp_b10 = 1;
                           }

                           --cdigits;
                           d = ch - 47;
                        }





                        if (d > 9)
                        {
                           if (exp_b10 == (-1))
                           {




                              int ch = *--ascii;

                              if (ch == 46)
                              {
                                 ++size; exp_b10 = 1;
                              }




                           }
                           else
                              ++exp_b10;


                           d = 1;
                        }
                     }
                  }
                  fp = 0;
               }

               if (d == 0)
               {
                  ++czero;
                  if (cdigits == 0) ++clead;
               }
               else
               {

                  cdigits += czero - clead;
                  clead = 0;

                  while (czero > 0)
                  {




                     if (exp_b10 != (-1))
                     {
                        if (exp_b10 == 0)
                        {
                           *ascii++ = 46; --size;
                        }

                        --exp_b10;
                     }
                     *ascii++ = 48; --czero;
                  }

                  if (exp_b10 != (-1))
                  {
                     if (exp_b10 == 0)
                     {
                        *ascii++ = 46; --size;
                     }

                     --exp_b10;
                  }
                  *ascii++ = (char)(48 + (int)d); ++cdigits;
               }
            }
            while (cdigits+czero < precision+clead && fp > DBL_MIN);
            if (exp_b10 >= (-1) && exp_b10 <= 2)
            {







               while (exp_b10-- > 0) *ascii++ = 48;

               *ascii = 0;




               return;
            }







            size -= cdigits;

            *ascii++ = 69; --size;





            {
               unsigned int uexp_b10;

               if (exp_b10 < 0)
               {
                  *ascii++ = 45; --size;
                  uexp_b10 = 0U-exp_b10;
               }

               else
                  uexp_b10 = 0U+exp_b10;

               cdigits = 0;

               while (uexp_b10 > 0)
               {
                  exponent[cdigits++] = (char)(48 + uexp_b10 % 10);
                  uexp_b10 /= 10;
               }
            }




            if (size > cdigits)
            {
               while (cdigits > 0) *ascii++ = exponent[--cdigits];

               *ascii = 0;

               return;
            }
         }
      }
      else if (!(fp >= DBL_MIN))
      {
         *ascii++ = 48;
         *ascii = 0;
         return;
      }
      else
      {
         *ascii++ = 105;
         *ascii++ = 110;
         *ascii++ = 102;
         *ascii = 0;
         return;
      }
   }


   png_error(png_ptr, "ASCII conversion buffer too small");
}
