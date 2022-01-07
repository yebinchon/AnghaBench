
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MINS_PER_HOUR ;
 int SECS_PER_MINUTE ;
 int strlen (char*) ;
 int strtoint (char*,char**,int) ;

__attribute__((used)) static int
DecodeTimezone(char *str, int *tzp)
{
 int tz;
 int hr,
    min;
 char *cp;
 int len;


 hr = strtoint(str + 1, &cp, 10);


 if (*cp == ':')
  min = strtoint(cp + 1, &cp, 10);

 else if (*cp == '\0' && (len = strlen(str)) > 3)
 {
  min = strtoint(str + len - 2, &cp, 10);
  if (min < 0 || min >= 60)
   return -1;

  *(str + len - 2) = '\0';
  hr = strtoint(str + 1, &cp, 10);
  if (hr < 0 || hr > 13)
   return -1;
 }
 else
  min = 0;

 tz = (hr * MINS_PER_HOUR + min) * SECS_PER_MINUTE;
 if (*str == '-')
  tz = -tz;

 *tzp = -tz;
 return *cp != '\0';
}
