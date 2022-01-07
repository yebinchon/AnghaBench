
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int nitems; TYPE_1__* items; } ;
struct TYPE_8__ {int keys; int statOid; } ;
struct TYPE_7__ {scalar_t__ frequency; scalar_t__ base_frequency; } ;
typedef TYPE_2__ StatisticExtInfo ;
typedef int SpecialJoinInfo ;
typedef double Selectivity ;
typedef int RelOptInfo ;
typedef int PlannerInfo ;
typedef TYPE_3__ MCVList ;
typedef int List ;
typedef int JoinType ;


 int* mcv_get_match_bitmap (int *,int *,int ,TYPE_3__*,int) ;
 TYPE_3__* statext_mcv_load (int ) ;

Selectivity
mcv_clauselist_selectivity(PlannerInfo *root, StatisticExtInfo *stat,
         List *clauses, int varRelid,
         JoinType jointype, SpecialJoinInfo *sjinfo,
         RelOptInfo *rel,
         Selectivity *basesel, Selectivity *totalsel)
{
 int i;
 MCVList *mcv;
 Selectivity s = 0.0;


 bool *matches = ((void*)0);


 mcv = statext_mcv_load(stat->statOid);


 matches = mcv_get_match_bitmap(root, clauses, stat->keys, mcv, 0);


 *basesel = 0.0;
 *totalsel = 0.0;
 for (i = 0; i < mcv->nitems; i++)
 {
  *totalsel += mcv->items[i].frequency;

  if (matches[i] != 0)
  {

   *basesel += mcv->items[i].base_frequency;
   s += mcv->items[i].frequency;
  }
 }

 return s;
}
