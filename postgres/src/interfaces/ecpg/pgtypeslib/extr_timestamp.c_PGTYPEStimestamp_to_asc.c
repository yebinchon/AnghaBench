
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;
struct tm {int dummy; } ;
typedef int fsec_t ;


 int EncodeDateTime (struct tm*,int ,int,int ,int *,int,char*,int ) ;
 int EncodeSpecialTimestamp (int ,char*) ;
 int MAXDATELEN ;
 int PGTYPES_TS_BAD_TIMESTAMP ;
 scalar_t__ TIMESTAMP_NOT_FINITE (int ) ;
 int errno ;
 char* pgtypes_strdup (char*) ;
 scalar_t__ timestamp2tm (int ,int *,struct tm*,int *,int *) ;

char *
PGTYPEStimestamp_to_asc(timestamp tstamp)
{
 struct tm tt,
      *tm = &tt;
 char buf[MAXDATELEN + 1];
 fsec_t fsec;
 int DateStyle = 1;


 if (TIMESTAMP_NOT_FINITE(tstamp))
  EncodeSpecialTimestamp(tstamp, buf);
 else if (timestamp2tm(tstamp, ((void*)0), tm, &fsec, ((void*)0)) == 0)
  EncodeDateTime(tm, fsec, 0, 0, ((void*)0), DateStyle, buf, 0);
 else
 {
  errno = PGTYPES_TS_BAD_TIMESTAMP;
  return ((void*)0);
 }
 return pgtypes_strdup(buf);
}
