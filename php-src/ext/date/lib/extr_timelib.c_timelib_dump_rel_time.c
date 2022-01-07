
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int first_last_day_of; scalar_t__ invert; int days; int s; int i; int h; int d; int m; int y; } ;
typedef TYPE_1__ timelib_rel_time ;


 int printf (char*,...) ;

void timelib_dump_rel_time(timelib_rel_time *d)
{
 printf("%3lldY %3lldM %3lldD / %3lldH %3lldM %3lldS (days: %lld)%s",
  d->y, d->m, d->d, d->h, d->i, d->s, d->days, d->invert ? " inverted" : "");
 if (d->first_last_day_of != 0) {
  switch (d->first_last_day_of) {
   case 1:
    printf(" / first day of");
    break;
   case 2:
    printf(" / last day of");
    break;
  }
 }
 printf("\n");
}
