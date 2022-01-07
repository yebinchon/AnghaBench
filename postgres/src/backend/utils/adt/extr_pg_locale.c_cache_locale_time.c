
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_wday; int tm_mon; int tm_mday; } ;


 int CurrentLCTimeValid ;
 int DEBUG3 ;
 int ERROR ;
 int FATAL ;
 int LC_CTYPE ;
 int LC_TIME ;
 int MAX_L10N_DATA ;
 int PG_SQL_ASCII ;
 int PG_UTF8 ;
 int cache_single_string (int *,char*,int) ;
 int elog (int ,char*,...) ;
 scalar_t__ errno ;
 char* locale_time ;
 int * localized_abbrev_days ;
 int * localized_abbrev_months ;
 int * localized_full_days ;
 int * localized_full_months ;
 struct tm* localtime (int *) ;
 int pfree (char*) ;
 int pg_get_encoding_from_locale (char*,int) ;
 char* pstrdup (char*) ;
 char* setlocale (int ,char*) ;
 scalar_t__ strftime (char*,int,char*,struct tm*) ;
 int time (int *) ;

void
cache_locale_time(void)
{
 char buf[(2 * 7 + 2 * 12) * MAX_L10N_DATA];
 char *bufptr;
 time_t timenow;
 struct tm *timeinfo;
 bool strftimefail = 0;
 int encoding;
 int i;
 char *save_lc_time;





 if (CurrentLCTimeValid)
  return;

 elog(DEBUG3, "cache_locale_time() executed; locale: \"%s\"", locale_time);
 save_lc_time = setlocale(LC_TIME, ((void*)0));
 if (!save_lc_time)
  elog(ERROR, "setlocale(NULL) failed");
 save_lc_time = pstrdup(save_lc_time);
 setlocale(LC_TIME, locale_time);


 timenow = time(((void*)0));
 timeinfo = localtime(&timenow);


 bufptr = buf;
 errno = 0;


 for (i = 0; i < 7; i++)
 {
  timeinfo->tm_wday = i;
  if (strftime(bufptr, MAX_L10N_DATA, "%a", timeinfo) <= 0)
   strftimefail = 1;
  bufptr += MAX_L10N_DATA;
  if (strftime(bufptr, MAX_L10N_DATA, "%A", timeinfo) <= 0)
   strftimefail = 1;
  bufptr += MAX_L10N_DATA;
 }


 for (i = 0; i < 12; i++)
 {
  timeinfo->tm_mon = i;
  timeinfo->tm_mday = 1;
  if (strftime(bufptr, MAX_L10N_DATA, "%b", timeinfo) <= 0)
   strftimefail = 1;
  bufptr += MAX_L10N_DATA;
  if (strftime(bufptr, MAX_L10N_DATA, "%B", timeinfo) <= 0)
   strftimefail = 1;
  bufptr += MAX_L10N_DATA;
 }
 if (!setlocale(LC_TIME, save_lc_time))
  elog(FATAL, "failed to restore LC_TIME to \"%s\"", save_lc_time);





 if (strftimefail)
  elog(ERROR, "strftime() failed: %m");


 pfree(save_lc_time);
 encoding = pg_get_encoding_from_locale(locale_time, 1);
 if (encoding < 0)
  encoding = PG_SQL_ASCII;
 bufptr = buf;


 for (i = 0; i < 7; i++)
 {
  cache_single_string(&localized_abbrev_days[i], bufptr, encoding);
  bufptr += MAX_L10N_DATA;
  cache_single_string(&localized_full_days[i], bufptr, encoding);
  bufptr += MAX_L10N_DATA;
 }


 for (i = 0; i < 12; i++)
 {
  cache_single_string(&localized_abbrev_months[i], bufptr, encoding);
  bufptr += MAX_L10N_DATA;
  cache_single_string(&localized_full_months[i], bufptr, encoding);
  bufptr += MAX_L10N_DATA;
 }

 CurrentLCTimeValid = 1;
}
