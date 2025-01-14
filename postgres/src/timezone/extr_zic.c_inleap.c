
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zic_t ;
struct lookup {int l_value; } ;


 int EPOCH_YEAR ;
 int LEAP_FIELDS ;
 size_t LP_CORR ;
 size_t LP_DAY ;
 size_t LP_MONTH ;
 size_t LP_ROLL ;
 size_t LP_TIME ;
 size_t LP_YEAR ;
 int SECSPERDAY ;
 int TM_JANUARY ;
 int _ (char*) ;
 struct lookup* byword (char*,int ) ;
 int error (int ) ;
 int gethms (char*,int ) ;
 size_t isleap (int) ;
 int leap_types ;
 int leapadd (int,int,int,int) ;
 int leapmaxyear ;
 int leapminyear ;
 int leapseen ;
 int** len_months ;
 int* len_years ;
 int max_time ;
 int min_time ;
 int mon_names ;
 int oadd (int,int) ;
 int sscanf (char const*,char*,int*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int tadd (int,int) ;

__attribute__((used)) static void
inleap(char **fields, int nfields)
{
 const char *cp;
 const struct lookup *lp;
 zic_t i,
    j;


 int year;
 int month,
    day;
 zic_t dayoff,
    tod;
 zic_t t;
 char xs;

 if (nfields != LEAP_FIELDS)
 {
  error(_("wrong number of fields on Leap line"));
  return;
 }
 dayoff = 0;
 cp = fields[LP_YEAR];
 if (sscanf(cp, "%d%c", &year, &xs) != 1)
 {



  error(_("invalid leaping year"));
  return;
 }
 if (!leapseen || leapmaxyear < year)
  leapmaxyear = year;
 if (!leapseen || leapminyear > year)
  leapminyear = year;
 leapseen = 1;
 j = EPOCH_YEAR;
 while (j != year)
 {
  if (year > j)
  {
   i = len_years[isleap(j)];
   ++j;
  }
  else
  {
   --j;
   i = -len_years[isleap(j)];
  }
  dayoff = oadd(dayoff, i);
 }
 if ((lp = byword(fields[LP_MONTH], mon_names)) == ((void*)0))
 {
  error(_("invalid month name"));
  return;
 }
 month = lp->l_value;
 j = TM_JANUARY;
 while (j != month)
 {
  i = len_months[isleap(year)][j];
  dayoff = oadd(dayoff, i);
  ++j;
 }
 cp = fields[LP_DAY];
 if (sscanf(cp, "%d%c", &day, &xs) != 1 ||
  day <= 0 || day > len_months[isleap(year)][month])
 {
  error(_("invalid day of month"));
  return;
 }
 dayoff = oadd(dayoff, day - 1);
 if (dayoff < min_time / SECSPERDAY)
 {
  error(_("time too small"));
  return;
 }
 if (dayoff > max_time / SECSPERDAY)
 {
  error(_("time too large"));
  return;
 }
 t = dayoff * SECSPERDAY;
 tod = gethms(fields[LP_TIME], _("invalid time of day"));
 cp = fields[LP_CORR];
 {
  bool positive;
  int count;

  if (strcmp(cp, "") == 0)
  {
   positive = 0;
   count = 1;
  }
  else if (strcmp(cp, "+") == 0)
  {
   positive = 1;
   count = 1;
  }
  else
  {
   error(_("illegal CORRECTION field on Leap line"));
   return;
  }
  if ((lp = byword(fields[LP_ROLL], leap_types)) == ((void*)0))
  {
   error(_("illegal Rolling/Stationary field on Leap line"));
   return;
  }
  t = tadd(t, tod);
  if (t < 0)
  {
   error(_("leap second precedes Epoch"));
   return;
  }
  leapadd(t, positive, lp->l_value, count);
 }
}
