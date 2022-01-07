
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int tm_mday; } ;
typedef int fsec_t ;


 int AdjustFractSeconds (double,struct pg_tm*,int *,int ) ;
 int SECS_PER_DAY ;

__attribute__((used)) static void
AdjustFractDays(double frac, struct pg_tm *tm, fsec_t *fsec, int scale)
{
 int extra_days;

 if (frac == 0)
  return;
 frac *= scale;
 extra_days = (int) frac;
 tm->tm_mday += extra_days;
 frac -= extra_days;
 AdjustFractSeconds(frac, tm, fsec, SECS_PER_DAY);
}
