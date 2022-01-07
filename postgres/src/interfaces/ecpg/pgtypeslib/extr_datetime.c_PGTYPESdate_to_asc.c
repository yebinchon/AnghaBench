
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_mday; int tm_mon; int tm_year; } ;
typedef scalar_t__ date ;


 int EncodeDateOnly (struct tm*,int,char*,int) ;
 int MAXDATELEN ;
 scalar_t__ date2j (int,int,int) ;
 int j2date (scalar_t__,int *,int *,int *) ;
 char* pgtypes_strdup (char*) ;

char *
PGTYPESdate_to_asc(date dDate)
{
 struct tm tt,
      *tm = &tt;
 char buf[MAXDATELEN + 1];
 int DateStyle = 1;
 bool EuroDates = 0;

 j2date(dDate + date2j(2000, 1, 1), &(tm->tm_year), &(tm->tm_mon), &(tm->tm_mday));
 EncodeDateOnly(tm, DateStyle, buf, EuroDates);
 return pgtypes_strdup(buf);
}
