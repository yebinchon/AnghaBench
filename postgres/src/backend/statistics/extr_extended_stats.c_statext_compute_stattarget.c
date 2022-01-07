
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* attr; } ;
typedef TYPE_2__ VacAttrStats ;
struct TYPE_4__ {int attstattarget; } ;


 int Assert (int) ;
 int default_statistics_target ;

__attribute__((used)) static int
statext_compute_stattarget(int stattarget, int nattrs, VacAttrStats **stats)
{
 int i;





 if (stattarget >= 0)
  return stattarget;






 for (i = 0; i < nattrs; i++)
 {

  if (stats[i]->attr->attstattarget > stattarget)
   stattarget = stats[i]->attr->attstattarget;
 }






 if (stattarget < 0)
  stattarget = default_statistics_target;


 Assert((stattarget >= 0) && (stattarget <= 10000));

 return stattarget;
}
