
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zic_t ;


 int EXIT_FAILURE ;
 int SECSPERDAY ;
 int _ (char*) ;
 int * corr ;
 int error (int ) ;
 int exit (int ) ;
 int leapcnt ;
 int tadd (int,int) ;
 int* trans ;

__attribute__((used)) static void
adjleap(void)
{
 int i;
 zic_t last = 0;
 zic_t prevtrans = 0;




 for (i = 0; i < leapcnt; ++i)
 {
  if (trans[i] - prevtrans < 28 * SECSPERDAY)
  {
   error(_("Leap seconds too close together"));
   exit(EXIT_FAILURE);
  }
  prevtrans = trans[i];
  trans[i] = tadd(trans[i], last);
  last = corr[i] += last;
 }
}
