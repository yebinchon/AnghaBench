
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_mon; void* tm_hour; void* tm_min; void* tm_sec; void* tm_year; void* tm_mday; } ;
typedef int fsec_t ;


 int DTK_DATE ;
 int DTK_DATE_M ;
 int DTK_TIME ;
 int DTK_TIME_M ;
 void* atoi (char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int strtoint (char*,int *,int) ;

__attribute__((used)) static int
DecodeNumberField(int len, char *str, int fmask,
      int *tmask, struct tm *tm, fsec_t *fsec, bool *is2digits)
{
 char *cp;





 if ((cp = strchr(str, '.')) != ((void*)0))
 {
  char fstr[7];
  int i;

  cp++;
  for (i = 0; i < 6; i++)
   fstr[i] = *cp != '\0' ? *cp++ : '0';
  fstr[i] = '\0';
  *fsec = strtoint(fstr, ((void*)0), 10);
  *cp = '\0';
  len = strlen(str);
 }

 else if ((fmask & DTK_DATE_M) != DTK_DATE_M)
 {

  if (len == 8)
  {
   *tmask = DTK_DATE_M;

   tm->tm_mday = atoi(str + 6);
   *(str + 6) = '\0';
   tm->tm_mon = atoi(str + 4);
   *(str + 4) = '\0';
   tm->tm_year = atoi(str + 0);

   return DTK_DATE;
  }

  else if (len == 6)
  {
   *tmask = DTK_DATE_M;
   tm->tm_mday = atoi(str + 4);
   *(str + 4) = '\0';
   tm->tm_mon = atoi(str + 2);
   *(str + 2) = '\0';
   tm->tm_year = atoi(str + 0);
   *is2digits = 1;

   return DTK_DATE;
  }

  else if (len == 5)
  {
   *tmask = DTK_DATE_M;
   tm->tm_mday = atoi(str + 2);
   *(str + 2) = '\0';
   tm->tm_mon = 1;
   tm->tm_year = atoi(str + 0);
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
   tm->tm_hour = atoi(str + 0);

   return DTK_TIME;
  }

  else if (len == 4)
  {
   *tmask = DTK_TIME_M;
   tm->tm_sec = 0;
   tm->tm_min = atoi(str + 2);
   *(str + 2) = '\0';
   tm->tm_hour = atoi(str + 0);

   return DTK_TIME;
  }
 }

 return -1;
}
