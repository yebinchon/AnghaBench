
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_13__ {int y; int m; int d; int h; int i; int s; int us; } ;
struct TYPE_14__ {int have_relative; int dst; scalar_t__ z; int sse; scalar_t__ sse_uptodate; TYPE_10__ relative; } ;
typedef TYPE_1__ timelib_time ;
struct TYPE_15__ {int y; int m; int d; int h; int i; int s; int us; scalar_t__ invert; scalar_t__ have_special_relative; scalar_t__ have_weekday_relative; } ;
typedef TYPE_2__ timelib_rel_time ;


 int memcpy (TYPE_10__*,TYPE_2__*,int) ;
 int memset (TYPE_10__*,int ,int) ;
 TYPE_1__* timelib_time_clone (TYPE_1__*) ;
 int timelib_update_from_sse (TYPE_1__*) ;
 int timelib_update_ts (TYPE_1__*,int *) ;

timelib_time *timelib_add(timelib_time *old_time, timelib_rel_time *interval)
{
 int bias = 1;
 timelib_time *t = timelib_time_clone(old_time);

 if (interval->have_weekday_relative || interval->have_special_relative) {
  memcpy(&t->relative, interval, sizeof(timelib_rel_time));
 } else {
  if (interval->invert) {
   bias = -1;
  }
  memset(&t->relative, 0, sizeof(timelib_rel_time));
  t->relative.y = interval->y * bias;
  t->relative.m = interval->m * bias;
  t->relative.d = interval->d * bias;
  t->relative.h = interval->h * bias;
  t->relative.i = interval->i * bias;
  t->relative.s = interval->s * bias;
  t->relative.us = interval->us * bias;
 }
 t->have_relative = 1;
 t->sse_uptodate = 0;

 timelib_update_ts(t, ((void*)0));



 if (old_time->dst == 1 && t->dst == 0 && !interval->y && !interval->m && !interval->d) {
  t->sse -= old_time->z;
  t->sse += t->z;
 }

 timelib_update_from_sse(t);
 t->have_relative = 0;

 return t;
}
