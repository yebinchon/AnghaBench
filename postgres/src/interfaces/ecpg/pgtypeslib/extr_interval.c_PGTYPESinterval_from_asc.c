
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
typedef int interval ;
typedef scalar_t__ fsec_t ;


 int DTK_DELTA ;
 scalar_t__ DecodeISO8601Interval (char*,int*,struct tm*,scalar_t__*) ;
 scalar_t__ DecodeInterval (char**,int*,int,int*,struct tm*,scalar_t__*) ;
 int MAXDATEFIELDS ;
 int MAXDATELEN ;
 scalar_t__ PGTYPES_INTVL_BAD_INTERVAL ;
 scalar_t__ ParseDateTime (char*,char*,char**,int*,int*,char**) ;
 scalar_t__ errno ;
 int free (int *) ;
 scalar_t__ pgtypes_alloc (int) ;
 int strlen (char*) ;
 scalar_t__ tm2interval (struct tm*,scalar_t__,int *) ;

interval *
PGTYPESinterval_from_asc(char *str, char **endptr)
{
 interval *result = ((void*)0);
 fsec_t fsec;
 struct tm tt,
      *tm = &tt;
 int dtype;
 int nf;
 char *field[MAXDATEFIELDS];
 int ftype[MAXDATEFIELDS];
 char lowstr[MAXDATELEN + MAXDATEFIELDS];
 char *realptr;
 char **ptr = (endptr != ((void*)0)) ? endptr : &realptr;

 tm->tm_year = 0;
 tm->tm_mon = 0;
 tm->tm_mday = 0;
 tm->tm_hour = 0;
 tm->tm_min = 0;
 tm->tm_sec = 0;
 fsec = 0;

 if (strlen(str) > MAXDATELEN)
 {
  errno = PGTYPES_INTVL_BAD_INTERVAL;
  return ((void*)0);
 }

 if (ParseDateTime(str, lowstr, field, ftype, &nf, ptr) != 0 ||
  (DecodeInterval(field, ftype, nf, &dtype, tm, &fsec) != 0 &&
   DecodeISO8601Interval(str, &dtype, tm, &fsec) != 0))
 {
  errno = PGTYPES_INTVL_BAD_INTERVAL;
  return ((void*)0);
 }

 result = (interval *) pgtypes_alloc(sizeof(interval));
 if (!result)
  return ((void*)0);

 if (dtype != DTK_DELTA)
 {
  errno = PGTYPES_INTVL_BAD_INTERVAL;
  free(result);
  return ((void*)0);
 }

 if (tm2interval(tm, fsec, result) != 0)
 {
  errno = PGTYPES_INTVL_BAD_INTERVAL;
  free(result);
  return ((void*)0);
 }

 errno = 0;
 return result;
}
