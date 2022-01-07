
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;
struct tm {int dummy; } ;
typedef int fsec_t ;
typedef int date ;


 int PGTYPESdate_dayofweek (int ) ;
 int PGTYPESdate_from_timestamp (int ) ;
 int dttofmtasc_replace (int *,int ,int,struct tm*,char*,int*,char const*) ;
 int timestamp2tm (int ,int *,struct tm*,int *,int *) ;

int
PGTYPEStimestamp_fmt_asc(timestamp * ts, char *output, int str_len, const char *fmtstr)
{
 struct tm tm;
 fsec_t fsec;
 date dDate;
 int dow;

 dDate = PGTYPESdate_from_timestamp(*ts);
 dow = PGTYPESdate_dayofweek(dDate);
 timestamp2tm(*ts, ((void*)0), &tm, &fsec, ((void*)0));

 return dttofmtasc_replace(ts, dDate, dow, &tm, output, &str_len, fmtstr);
}
