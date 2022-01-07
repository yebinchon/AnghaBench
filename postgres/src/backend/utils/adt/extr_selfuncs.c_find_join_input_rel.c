
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relids ;
typedef int RelOptInfo ;
typedef int PlannerInfo ;





 int ERROR ;
 int bms_membership (int ) ;
 int bms_singleton_member (int ) ;
 int elog (int ,char*) ;
 int * find_base_rel (int *,int ) ;
 int * find_join_rel (int *,int ) ;

__attribute__((used)) static RelOptInfo *
find_join_input_rel(PlannerInfo *root, Relids relids)
{
 RelOptInfo *rel = ((void*)0);

 switch (bms_membership(relids))
 {
  case 130:

   break;
  case 128:
   rel = find_base_rel(root, bms_singleton_member(relids));
   break;
  case 129:
   rel = find_join_rel(root, relids);
   break;
 }

 if (rel == ((void*)0))
  elog(ERROR, "could not find RelOptInfo for given relids");

 return rel;
}
