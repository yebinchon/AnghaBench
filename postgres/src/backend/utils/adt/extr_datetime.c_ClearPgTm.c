
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
typedef scalar_t__ fsec_t ;



__attribute__((used)) static inline void
ClearPgTm(struct pg_tm *tm, fsec_t *fsec)
{
 tm->tm_year = 0;
 tm->tm_mon = 0;
 tm->tm_mday = 0;
 tm->tm_hour = 0;
 tm->tm_min = 0;
 tm->tm_sec = 0;
 *fsec = 0;
}
