
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int tm_hour; int tm_min; int tm_sec; } ;
typedef scalar_t__ fsec_t ;


 int DTERR_BAD_FORMAT ;
 int DTERR_FIELD_OVERFLOW ;
 int DTK_TIME_M ;
 scalar_t__ ERANGE ;
 scalar_t__ INT64CONST (int ) ;
 int INTERVAL_MASK (int ) ;
 int MINS_PER_HOUR ;
 int MINUTE ;
 int ParseFractionalSecond (char*,scalar_t__*) ;
 int SECOND ;
 int SECS_PER_MINUTE ;
 scalar_t__ USECS_PER_SEC ;
 scalar_t__ errno ;
 void* strtoint (char*,char**,int) ;

__attribute__((used)) static int
DecodeTime(char *str, int fmask, int range,
     int *tmask, struct pg_tm *tm, fsec_t *fsec)
{
 char *cp;
 int dterr;

 *tmask = DTK_TIME_M;

 errno = 0;
 tm->tm_hour = strtoint(str, &cp, 10);
 if (errno == ERANGE)
  return DTERR_FIELD_OVERFLOW;
 if (*cp != ':')
  return DTERR_BAD_FORMAT;
 errno = 0;
 tm->tm_min = strtoint(cp + 1, &cp, 10);
 if (errno == ERANGE)
  return DTERR_FIELD_OVERFLOW;
 if (*cp == '\0')
 {
  tm->tm_sec = 0;
  *fsec = 0;

  if (range == (INTERVAL_MASK(MINUTE) | INTERVAL_MASK(SECOND)))
  {
   tm->tm_sec = tm->tm_min;
   tm->tm_min = tm->tm_hour;
   tm->tm_hour = 0;
  }
 }
 else if (*cp == '.')
 {

  dterr = ParseFractionalSecond(cp, fsec);
  if (dterr)
   return dterr;
  tm->tm_sec = tm->tm_min;
  tm->tm_min = tm->tm_hour;
  tm->tm_hour = 0;
 }
 else if (*cp == ':')
 {
  errno = 0;
  tm->tm_sec = strtoint(cp + 1, &cp, 10);
  if (errno == ERANGE)
   return DTERR_FIELD_OVERFLOW;
  if (*cp == '\0')
   *fsec = 0;
  else if (*cp == '.')
  {
   dterr = ParseFractionalSecond(cp, fsec);
   if (dterr)
    return dterr;
  }
  else
   return DTERR_BAD_FORMAT;
 }
 else
  return DTERR_BAD_FORMAT;


 if (tm->tm_hour < 0 || tm->tm_min < 0 || tm->tm_min > MINS_PER_HOUR - 1 ||
  tm->tm_sec < 0 || tm->tm_sec > SECS_PER_MINUTE ||
  *fsec < INT64CONST(0) ||
  *fsec > USECS_PER_SEC)
  return DTERR_FIELD_OVERFLOW;

 return 0;
}
