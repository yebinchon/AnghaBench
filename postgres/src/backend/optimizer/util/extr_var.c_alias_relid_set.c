
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int rtable; } ;
struct TYPE_6__ {scalar_t__ rtekind; } ;
typedef int * Relids ;
typedef TYPE_1__ RangeTblEntry ;
typedef TYPE_2__ Query ;


 scalar_t__ RTE_JOIN ;
 int * bms_add_member (int *,int) ;
 int * bms_join (int *,int ) ;
 int bms_next_member (int *,int) ;
 int get_relids_for_join (TYPE_2__*,int) ;
 TYPE_1__* rt_fetch (int,int ) ;

__attribute__((used)) static Relids
alias_relid_set(Query *query, Relids relids)
{
 Relids result = ((void*)0);
 int rtindex;

 rtindex = -1;
 while ((rtindex = bms_next_member(relids, rtindex)) >= 0)
 {
  RangeTblEntry *rte = rt_fetch(rtindex, query->rtable);

  if (rte->rtekind == RTE_JOIN)
   result = bms_join(result, get_relids_for_join(query, rtindex));
  else
   result = bms_add_member(result, rtindex);
 }
 return result;
}
