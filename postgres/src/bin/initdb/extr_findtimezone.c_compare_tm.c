
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; scalar_t__ tm_wday; scalar_t__ tm_yday; scalar_t__ tm_isdst; } ;
struct pg_tm {scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; scalar_t__ tm_wday; scalar_t__ tm_yday; scalar_t__ tm_isdst; } ;



__attribute__((used)) static bool
compare_tm(struct tm *s, struct pg_tm *p)
{
 if (s->tm_sec != p->tm_sec ||
  s->tm_min != p->tm_min ||
  s->tm_hour != p->tm_hour ||
  s->tm_mday != p->tm_mday ||
  s->tm_mon != p->tm_mon ||
  s->tm_year != p->tm_year ||
  s->tm_wday != p->tm_wday ||
  s->tm_yday != p->tm_yday ||
  s->tm_isdst != p->tm_isdst)
  return 0;
 return 1;
}
