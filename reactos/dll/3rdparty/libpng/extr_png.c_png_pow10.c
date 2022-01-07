
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBL_MIN_10_EXP ;

__attribute__((used)) static double
png_pow10(int power)
{
   int recip = 0;
   double d = 1;




   if (power < 0)
   {
      if (power < DBL_MIN_10_EXP) return 0;
      recip = 1; power = -power;
   }

   if (power > 0)
   {

      double mult = 10;
      do
      {
         if (power & 1) d *= mult;
         mult *= mult;
         power >>= 1;
      }
      while (power > 0);

      if (recip != 0) d = 1/d;
   }


   return d;
}
