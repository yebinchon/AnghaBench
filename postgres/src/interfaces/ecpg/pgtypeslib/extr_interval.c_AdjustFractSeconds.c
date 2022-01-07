
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_sec; } ;
typedef int fsec_t ;


 scalar_t__ rint (double) ;

__attribute__((used)) static void
AdjustFractSeconds(double frac, struct tm *tm, fsec_t *fsec, int scale)
{
 int sec;

 if (frac == 0)
  return;
 frac *= scale;
 sec = (int) frac;
 tm->tm_sec += sec;
 frac -= sec;
 *fsec += rint(frac * 1000000);
}
