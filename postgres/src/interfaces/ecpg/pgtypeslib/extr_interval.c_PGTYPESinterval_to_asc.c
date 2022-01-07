
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;
typedef int interval ;
typedef int fsec_t ;


 int EncodeInterval (struct tm*,int ,int,char*) ;
 int INTSTYLE_POSTGRES_VERBOSE ;
 int MAXDATELEN ;
 int PGTYPES_INTVL_BAD_INTERVAL ;
 int errno ;
 scalar_t__ interval2tm (int ,struct tm*,int *) ;
 char* pgtypes_strdup (char*) ;

char *
PGTYPESinterval_to_asc(interval * span)
{
 struct tm tt,
      *tm = &tt;
 fsec_t fsec;
 char buf[MAXDATELEN + 1];
 int IntervalStyle = INTSTYLE_POSTGRES_VERBOSE;

 if (interval2tm(*span, tm, &fsec) != 0)
 {
  errno = PGTYPES_INTVL_BAD_INTERVAL;
  return ((void*)0);
 }

 EncodeInterval(tm, fsec, IntervalStyle, buf);

 return pgtypes_strdup(buf);
}
