
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tupattnum; TYPE_1__* attr; } ;
typedef TYPE_2__ VacAttrStats ;
struct TYPE_6__ {int attisdropped; } ;
typedef int Relation ;
typedef int Bitmapset ;


 int Assert (int) ;
 int bms_next_member (int *,int) ;
 int bms_num_members (int *) ;
 scalar_t__ palloc (int) ;
 int pfree (TYPE_2__**) ;

__attribute__((used)) static VacAttrStats **
lookup_var_attr_stats(Relation rel, Bitmapset *attrs,
       int nvacatts, VacAttrStats **vacatts)
{
 int i = 0;
 int x = -1;
 VacAttrStats **stats;

 stats = (VacAttrStats **)
  palloc(bms_num_members(attrs) * sizeof(VacAttrStats *));


 while ((x = bms_next_member(attrs, x)) >= 0)
 {
  int j;

  stats[i] = ((void*)0);
  for (j = 0; j < nvacatts; j++)
  {
   if (x == vacatts[j]->tupattnum)
   {
    stats[i] = vacatts[j];
    break;
   }
  }

  if (!stats[i])
  {





   pfree(stats);
   return ((void*)0);
  }





  Assert(!stats[i]->attr->attisdropped);

  i++;
 }

 return stats;
}
