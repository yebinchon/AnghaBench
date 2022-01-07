
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {void* tm_hour; void* tm_min; void* tm_sec; void* tm_year; void* tm_mon; void* tm_mday; } ;
typedef int fsec_t ;


 int DTERR_BAD_FORMAT ;
 int DTK_DATE ;
 int DTK_DATE_M ;
 int DTK_TIME ;
 int DTK_TIME_M ;
 void* atoi (char*) ;
 scalar_t__ errno ;
 int rint (double) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 double strtod (char*,int *) ;

__attribute__((used)) static int
DecodeNumberField(int len, char *str, int fmask,
      int *tmask, struct pg_tm *tm, fsec_t *fsec, bool *is2digits)
{
 char *cp;





 if ((cp = strchr(str, '.')) != ((void*)0))
 {




  double frac;

  errno = 0;
  frac = strtod(cp, ((void*)0));
  if (errno != 0)
   return DTERR_BAD_FORMAT;
  *fsec = rint(frac * 1000000);

  *cp = '\0';
  len = strlen(str);
 }

 else if ((fmask & DTK_DATE_M) != DTK_DATE_M)
 {
  if (len >= 6)
  {
   *tmask = DTK_DATE_M;





   tm->tm_mday = atoi(str + (len - 2));
   *(str + (len - 2)) = '\0';
   tm->tm_mon = atoi(str + (len - 4));
   *(str + (len - 4)) = '\0';
   tm->tm_year = atoi(str);
   if ((len - 4) == 2)
    *is2digits = 1;

   return DTK_DATE;
  }
 }


 if ((fmask & DTK_TIME_M) != DTK_TIME_M)
 {

  if (len == 6)
  {
   *tmask = DTK_TIME_M;
   tm->tm_sec = atoi(str + 4);
   *(str + 4) = '\0';
   tm->tm_min = atoi(str + 2);
   *(str + 2) = '\0';
   tm->tm_hour = atoi(str);

   return DTK_TIME;
  }

  else if (len == 4)
  {
   *tmask = DTK_TIME_M;
   tm->tm_sec = 0;
   tm->tm_min = atoi(str + 2);
   *(str + 2) = '\0';
   tm->tm_hour = atoi(str);

   return DTK_TIME;
  }
 }

 return DTERR_BAD_FORMAT;
}
