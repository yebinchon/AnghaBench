
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; double min; double max; double sum; double sum2; } ;
typedef TYPE_1__ SimpleStats ;



__attribute__((used)) static void
addToSimpleStats(SimpleStats *ss, double val)
{
 if (ss->count == 0 || val < ss->min)
  ss->min = val;
 if (ss->count == 0 || val > ss->max)
  ss->max = val;
 ss->count++;
 ss->sum += val;
 ss->sum2 += val * val;
}
