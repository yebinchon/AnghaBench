
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ttinfo {int tt_desigidx; long tt_utoff; int tt_isdst; } ;
struct state {char* chars; int charcnt; int timecnt; scalar_t__ const* ats; size_t* types; struct ttinfo* ttis; } ;
struct TYPE_3__ {struct state state; } ;
typedef TYPE_1__ pg_tz ;
typedef scalar_t__ pg_time_t ;


 scalar_t__ strcmp (char const*,char const*) ;

bool
pg_interpret_timezone_abbrev(const char *abbrev,
        const pg_time_t *timep,
        long int *gmtoff,
        int *isdst,
        const pg_tz *tz)
{
 const struct state *sp;
 const char *abbrs;
 const struct ttinfo *ttisp;
 int abbrind;
 int cutoff;
 int i;
 const pg_time_t t = *timep;

 sp = &tz->state;





 abbrs = sp->chars;
 abbrind = 0;
 while (abbrind < sp->charcnt)
 {
  if (strcmp(abbrev, abbrs + abbrind) == 0)
   break;
  while (abbrs[abbrind] != '\0')
   abbrind++;
  abbrind++;
 }
 if (abbrind >= sp->charcnt)
  return 0;
 {
  int lo = 0;
  int hi = sp->timecnt;

  while (lo < hi)
  {
   int mid = (lo + hi) >> 1;

   if (t < sp->ats[mid])
    hi = mid;
   else
    lo = mid + 1;
  }
  cutoff = lo;
 }





 for (i = cutoff - 1; i >= 0; i--)
 {
  ttisp = &sp->ttis[sp->types[i]];
  if (ttisp->tt_desigidx == abbrind)
  {
   *gmtoff = ttisp->tt_utoff;
   *isdst = ttisp->tt_isdst;
   return 1;
  }
 }




 for (i = cutoff; i < sp->timecnt; i++)
 {
  ttisp = &sp->ttis[sp->types[i]];
  if (ttisp->tt_desigidx == abbrind)
  {
   *gmtoff = ttisp->tt_utoff;
   *isdst = ttisp->tt_isdst;
   return 1;
  }
 }

 return 0;
}
