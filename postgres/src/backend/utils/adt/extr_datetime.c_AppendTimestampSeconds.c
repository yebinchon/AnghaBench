
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int tm_sec; } ;
typedef int fsec_t ;


 char* AppendSeconds (char*,int ,int ,int ,int) ;
 int MAX_TIMESTAMP_PRECISION ;

__attribute__((used)) static char *
AppendTimestampSeconds(char *cp, struct pg_tm *tm, fsec_t fsec)
{
 return AppendSeconds(cp, tm->tm_sec, fsec, MAX_TIMESTAMP_PRECISION, 1);
}
