
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int type; int amount; } ;
struct TYPE_8__ {int first_last_day_of; int weekday; int weekday_behavior; TYPE_2__ special; scalar_t__ have_special_relative; scalar_t__ have_weekday_relative; scalar_t__ us; int s; int i; int h; int d; int m; int y; } ;
struct TYPE_9__ {int zone_type; scalar_t__ y; scalar_t__ us; int z; int dst; char* tz_abbr; TYPE_3__ relative; scalar_t__ have_relative; TYPE_1__* tz_info; scalar_t__ is_localtime; int s; int i; int h; int d; int m; int sse; } ;
typedef TYPE_4__ timelib_time ;
struct TYPE_6__ {char* name; } ;


 int TIMELIB_LLABS (scalar_t__) ;






 int printf (char*,...) ;

void timelib_dump_date(timelib_time *d, int options)
{
 if ((options & 2) == 2) {
  printf("TYPE: %d ", d->zone_type);
 }
 printf("TS: %lld | %s%04lld-%02lld-%02lld %02lld:%02lld:%02lld",
  d->sse, d->y < 0 ? "-" : "", TIMELIB_LLABS(d->y), d->m, d->d, d->h, d->i, d->s);
 if (d->us > 0) {
  printf(" 0.%06lld", d->us);
 }

 if (d->is_localtime) {
  switch (d->zone_type) {
   case 128:
    printf(" GMT %05d%s", d->z, d->dst == 1 ? " (DST)" : "");
    break;
   case 129:

    if (d->tz_abbr) {
     printf(" %s", d->tz_abbr);
    }

    if (d->tz_info) {
     printf(" %s", d->tz_info->name);
    }
    break;
   case 130:
    printf(" %s", d->tz_abbr);
    printf(" %05d%s", d->z, d->dst == 1 ? " (DST)" : "");
    break;
  }
 }

 if ((options & 1) == 1) {
  if (d->have_relative) {
   printf("%3lldY %3lldM %3lldD / %3lldH %3lldM %3lldS",
    d->relative.y, d->relative.m, d->relative.d, d->relative.h, d->relative.i, d->relative.s);
   if (d->relative.us) {
    printf(" 0.%06lld", d->relative.us);
   }
   if (d->relative.first_last_day_of != 0) {
    switch (d->relative.first_last_day_of) {
     case 1:
      printf(" / first day of");
      break;
     case 2:
      printf(" / last day of");
      break;
    }
   }
   if (d->relative.have_weekday_relative) {
    printf(" / %d.%d", d->relative.weekday, d->relative.weekday_behavior);
   }
   if (d->relative.have_special_relative) {
    switch (d->relative.special.type) {
     case 131:
      printf(" / %lld weekday", d->relative.special.amount);
      break;
     case 133:
      printf(" / x y of z month");
      break;
     case 132:
      printf(" / last y of z month");
      break;
    }
   }
  }
 }
 printf("\n");
}
