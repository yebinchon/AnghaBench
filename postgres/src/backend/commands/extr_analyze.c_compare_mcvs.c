
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int first; } ;
typedef TYPE_1__ ScalarMCVItem ;



__attribute__((used)) static int
compare_mcvs(const void *a, const void *b)
{
 int da = ((const ScalarMCVItem *) a)->first;
 int db = ((const ScalarMCVItem *) b)->first;

 return da - db;
}
