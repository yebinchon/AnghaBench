
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* jointree; void* havingQual; scalar_t__ groupingSets; scalar_t__ groupClause; scalar_t__ hasAggs; int hasSubLinks; int targetList; int * setOperations; } ;
struct TYPE_5__ {void* quals; } ;
typedef int RangeTblEntry ;
typedef TYPE_2__ Query ;
typedef int Node ;
typedef int Index ;


 int REPLACEVARS_REPORT_ERROR ;
 int * ReplaceVarsFromTargetList (int *,int ,int ,int *,int ,int ,int ,int *) ;
 void* make_and_qual (void*,int *) ;
 int recurse_push_qual (int *,TYPE_2__*,int *,int ,int *) ;

__attribute__((used)) static void
subquery_push_qual(Query *subquery, RangeTblEntry *rte, Index rti, Node *qual)
{
 if (subquery->setOperations != ((void*)0))
 {

  recurse_push_qual(subquery->setOperations, subquery,
        rte, rti, qual);
 }
 else
 {
  qual = ReplaceVarsFromTargetList(qual, rti, 0, rte,
           subquery->targetList,
           REPLACEVARS_REPORT_ERROR, 0,
           &subquery->hasSubLinks);






  if (subquery->hasAggs || subquery->groupClause || subquery->groupingSets || subquery->havingQual)
   subquery->havingQual = make_and_qual(subquery->havingQual, qual);
  else
   subquery->jointree->quals =
    make_and_qual(subquery->jointree->quals, qual);






 }
}
