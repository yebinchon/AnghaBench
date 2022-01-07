
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int two_backup ;
struct TYPE_14__ {int sse; scalar_t__ us; int zone_type; scalar_t__ z; int h; int dst; scalar_t__ s; scalar_t__ i; scalar_t__ d; scalar_t__ m; scalar_t__ y; TYPE_1__* tz_info; } ;
typedef TYPE_2__ timelib_time ;
typedef int timelib_sll ;
struct TYPE_15__ {int invert; int h; scalar_t__ us; scalar_t__ i; scalar_t__ d; int days; scalar_t__ s; scalar_t__ m; scalar_t__ y; } ;
typedef TYPE_3__ timelib_rel_time ;
typedef int one_backup ;
struct TYPE_13__ {int name; } ;


 int fabs (int ) ;
 int floor (int) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 scalar_t__ strcmp (int ,int ) ;
 int timelib_apply_localtime (TYPE_2__*,int ) ;
 int timelib_do_rel_normalize (TYPE_2__*,TYPE_3__*) ;
 TYPE_3__* timelib_rel_time_ctor () ;

timelib_rel_time *timelib_diff(timelib_time *one, timelib_time *two)
{
 timelib_rel_time *rt;
 timelib_time *swp;
 timelib_sll dst_corr = 0 ,dst_h_corr = 0, dst_m_corr = 0;
 timelib_time one_backup, two_backup;

 rt = timelib_rel_time_ctor();
 rt->invert = 0;
 if (
  (one->sse > two->sse) ||
  (one->sse == two->sse && one->us > two->us)
 ) {
  swp = two;
  two = one;
  one = swp;
  rt->invert = 1;
 }



 if (one->zone_type == 3 && two->zone_type == 3
  && (strcmp(one->tz_info->name, two->tz_info->name) == 0)
  && (one->z != two->z))
 {
  dst_corr = two->z - one->z;
  dst_h_corr = dst_corr / 3600;
  dst_m_corr = (dst_corr % 3600) / 60;
 }


 memcpy(&one_backup, one, sizeof(one_backup));
 memcpy(&two_backup, two, sizeof(two_backup));

    timelib_apply_localtime(one, 0);
    timelib_apply_localtime(two, 0);

 rt->y = two->y - one->y;
 rt->m = two->m - one->m;
 rt->d = two->d - one->d;
 rt->h = two->h - one->h;
 rt->i = two->i - one->i;
 rt->s = two->s - one->s;
 rt->us = two->us - one->us;
 if (one_backup.dst == 0 && two_backup.dst == 1 && two->sse >= one->sse + 86400 - dst_corr) {
  rt->h += dst_h_corr;
  rt->i += dst_m_corr;
 }

 rt->days = fabs(floor((one->sse - two->sse - (dst_h_corr * 3600) - (dst_m_corr * 60)) / 86400));

 timelib_do_rel_normalize(rt->invert ? one : two, rt);


 if (one_backup.dst == 1 && two_backup.dst == 0 && two->sse >= one->sse + 86400) {
  if (two->sse < one->sse + 86400 - dst_corr) {
   rt->d--;
   rt->h = 24;
  } else {
   rt->h += dst_h_corr;
   rt->i += dst_m_corr;
  }
 }


 memcpy(one, &one_backup, sizeof(one_backup));
 memcpy(two, &two_backup, sizeof(two_backup));

 return rt;
}
