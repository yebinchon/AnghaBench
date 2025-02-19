
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {size_t tm_wday; int tm_mday; size_t tm_mon; int tm_year; int tm_hour; int tm_min; int tm_sec; } ;


 char** days ;
 struct tm* gmtime (int *) ;
 char** monthtab ;
 int sprintf (char*,char*,char*,int,char*,int,int,int,int) ;

__attribute__((used)) static void
strtime(time_t * t, char *s)
{
    struct tm *tm;

    tm = gmtime((time_t *) t);
    sprintf(s, "%s, %02d %s %d %02d:%02d:%02d GMT",
            days[tm->tm_wday], tm->tm_mday, monthtab[tm->tm_mon],
            tm->tm_year + 1900, tm->tm_hour, tm->tm_min, tm->tm_sec);
}
