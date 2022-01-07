
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zic_t ;


 int EXIT_FAILURE ;
 int TZ_MAX_LEAPS ;
 int _ (char*) ;
 int* corr ;
 int error (int ) ;
 int exit (int ) ;
 int leapcnt ;
 int* roll ;
 scalar_t__* trans ;

__attribute__((used)) static void
leapadd(zic_t t, bool positive, int rolling, int count)
{
 int i,
    j;

 if (leapcnt + (positive ? count : 1) > TZ_MAX_LEAPS)
 {
  error(_("too many leap seconds"));
  exit(EXIT_FAILURE);
 }
 for (i = 0; i < leapcnt; ++i)
  if (t <= trans[i])
   break;
 do
 {
  for (j = leapcnt; j > i; --j)
  {
   trans[j] = trans[j - 1];
   corr[j] = corr[j - 1];
   roll[j] = roll[j - 1];
  }
  trans[i] = t;
  corr[i] = positive ? 1 : -count;
  roll[i] = rolling;
  ++leapcnt;
 } while (positive && --count != 0);
}
