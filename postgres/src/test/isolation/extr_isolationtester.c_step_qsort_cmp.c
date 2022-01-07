
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ Step ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
step_qsort_cmp(const void *a, const void *b)
{
 Step *stepa = *((Step **) a);
 Step *stepb = *((Step **) b);

 return strcmp(stepa->name, stepb->name);
}
