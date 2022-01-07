
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int consider_parallel; int fdwroutine; int useridiscurrent; int userid; int serverid; int * reltarget; int reloptkind; int * relids; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int PathTarget ;
typedef int Node ;


 scalar_t__ IS_OTHER_REL (TYPE_1__*) ;
 int RELOPT_OTHER_UPPER_REL ;
 int UPPERREL_GROUP_AGG ;
 TYPE_1__* fetch_upper_rel (int *,int ,int *) ;
 scalar_t__ is_parallel_safe (int *,int *) ;

__attribute__((used)) static RelOptInfo *
make_grouping_rel(PlannerInfo *root, RelOptInfo *input_rel,
      PathTarget *target, bool target_parallel_safe,
      Node *havingQual)
{
 RelOptInfo *grouped_rel;

 if (IS_OTHER_REL(input_rel))
 {
  grouped_rel = fetch_upper_rel(root, UPPERREL_GROUP_AGG,
           input_rel->relids);
  grouped_rel->reloptkind = RELOPT_OTHER_UPPER_REL;
 }
 else
 {





  grouped_rel = fetch_upper_rel(root, UPPERREL_GROUP_AGG, ((void*)0));
 }


 grouped_rel->reltarget = target;






 if (input_rel->consider_parallel && target_parallel_safe &&
  is_parallel_safe(root, (Node *) havingQual))
  grouped_rel->consider_parallel = 1;




 grouped_rel->serverid = input_rel->serverid;
 grouped_rel->userid = input_rel->userid;
 grouped_rel->useridiscurrent = input_rel->useridiscurrent;
 grouped_rel->fdwroutine = input_rel->fdwroutine;

 return grouped_rel;
}
