
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;


 int PGTYPEStimestamp_defmt_scan (char**,char*,int *,int*,int*,int*,int*,int*,int*,int*) ;
 int free (char*) ;
 char* pgtypes_strdup (char const*) ;

int
PGTYPEStimestamp_defmt_asc(const char *str, const char *fmt, timestamp * d)
{
 int year,
    month,
    day;
 int hour,
    minute,
    second;
 int tz;

 int i;
 char *mstr;
 char *mfmt;

 if (!fmt)
  fmt = "%Y-%m-%d %H:%M:%S";
 if (!fmt[0])
  return 1;

 mstr = pgtypes_strdup(str);
 mfmt = pgtypes_strdup(fmt);






 year = -1;
 month = -1;
 day = -1;
 hour = 0;
 minute = -1;
 second = -1;
 tz = 0;

 i = PGTYPEStimestamp_defmt_scan(&mstr, mfmt, d, &year, &month, &day, &hour, &minute, &second, &tz);
 free(mstr);
 free(mfmt);
 return i;
}
