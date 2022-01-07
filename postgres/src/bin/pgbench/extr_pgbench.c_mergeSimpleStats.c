
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ count; scalar_t__ min; scalar_t__ max; scalar_t__ sum2; scalar_t__ sum; } ;
typedef TYPE_1__ SimpleStats ;



__attribute__((used)) static void
mergeSimpleStats(SimpleStats *acc, SimpleStats *ss)
{
 if (acc->count == 0 || ss->min < acc->min)
  acc->min = ss->min;
 if (acc->count == 0 || ss->max > acc->max)
  acc->max = ss->max;
 acc->count += ss->count;
 acc->sum += ss->sum;
 acc->sum2 += ss->sum2;
}
