
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ upper; scalar_t__ lower; } ;
typedef TYPE_1__ SEG ;


 scalar_t__ Abs (scalar_t__) ;

__attribute__((used)) static void
rt_seg_size(SEG *a, float *size)
{
 if (a == (SEG *) ((void*)0) || a->upper <= a->lower)
  *size = 0.0;
 else
  *size = (float) Abs(a->upper - a->lower);

 return;
}
