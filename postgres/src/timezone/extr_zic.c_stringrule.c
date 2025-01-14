
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zic_t ;
struct rule {int r_tod; scalar_t__ r_dycode; int r_dayofmonth; int r_month; int r_wday; int r_isdst; scalar_t__ r_todisstd; scalar_t__ r_todisut; } ;


 int DAYSPERWEEK ;
 scalar_t__ DC_DOM ;
 scalar_t__ DC_DOWGEQ ;
 scalar_t__ DC_DOWLEQ ;
 int MINSPERHOUR ;
 int SECSPERDAY ;
 int SECSPERMIN ;
 int TM_FEBRUARY ;
 int** len_months ;
 int sprintf (char*,char*,int,...) ;
 int stringoffset (char*,int) ;

__attribute__((used)) static int
stringrule(char *result, struct rule *const rp, zic_t save, zic_t stdoff)
{
 zic_t tod = rp->r_tod;
 int compat = 0;

 if (rp->r_dycode == DC_DOM)
 {
  int month,
     total;

  if (rp->r_dayofmonth == 29 && rp->r_month == TM_FEBRUARY)
   return -1;
  total = 0;
  for (month = 0; month < rp->r_month; ++month)
   total += len_months[0][month];

  if (rp->r_month <= 1)
   result += sprintf(result, "%d", total + rp->r_dayofmonth - 1);
  else
   result += sprintf(result, "J%d", total + rp->r_dayofmonth);
 }
 else
 {
  int week;
  int wday = rp->r_wday;
  int wdayoff;

  if (rp->r_dycode == DC_DOWGEQ)
  {
   wdayoff = (rp->r_dayofmonth - 1) % DAYSPERWEEK;
   if (wdayoff)
    compat = 2013;
   wday -= wdayoff;
   tod += wdayoff * SECSPERDAY;
   week = 1 + (rp->r_dayofmonth - 1) / DAYSPERWEEK;
  }
  else if (rp->r_dycode == DC_DOWLEQ)
  {
   if (rp->r_dayofmonth == len_months[1][rp->r_month])
    week = 5;
   else
   {
    wdayoff = rp->r_dayofmonth % DAYSPERWEEK;
    if (wdayoff)
     compat = 2013;
    wday -= wdayoff;
    tod += wdayoff * SECSPERDAY;
    week = rp->r_dayofmonth / DAYSPERWEEK;
   }
  }
  else
   return -1;
  if (wday < 0)
   wday += DAYSPERWEEK;
  result += sprintf(result, "M%d.%d.%d",
        rp->r_month + 1, week, wday);
 }
 if (rp->r_todisut)
  tod += stdoff;
 if (rp->r_todisstd && !rp->r_isdst)
  tod += save;
 if (tod != 2 * SECSPERMIN * MINSPERHOUR)
 {
  *result++ = '/';
  if (!stringoffset(result, tod))
   return -1;
  if (tod < 0)
  {
   if (compat < 2013)
    compat = 2013;
  }
  else if (SECSPERDAY <= tod)
  {
   if (compat < 1994)
    compat = 1994;
  }
 }
 return compat;
}
