
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * joininfo; int lateral_referencers; scalar_t__ has_eclass_joins; int lateral_relids; int baserestrictinfo; } ;
typedef int Relids ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int Path ;
typedef int List ;


 int BuildParameterizedTidPaths (int *,TYPE_1__*,int *) ;
 int * TidQualFromRestrictInfoList (int ,TYPE_1__*) ;
 int add_path (TYPE_1__*,int *) ;
 scalar_t__ create_tidscan_path (int *,TYPE_1__*,int *,int ) ;
 int ec_member_matches_ctid ;
 int * generate_implied_equalities_for_column (int *,TYPE_1__*,int ,int *,int ) ;

void
create_tidscan_paths(PlannerInfo *root, RelOptInfo *rel)
{
 List *tidquals;





 tidquals = TidQualFromRestrictInfoList(rel->baserestrictinfo, rel);

 if (tidquals)
 {




  Relids required_outer = rel->lateral_relids;

  add_path(rel, (Path *) create_tidscan_path(root, rel, tidquals,
               required_outer));
 }






 if (rel->has_eclass_joins)
 {
  List *clauses;


  clauses = generate_implied_equalities_for_column(root,
               rel,
               ec_member_matches_ctid,
               ((void*)0),
               rel->lateral_referencers);


  BuildParameterizedTidPaths(root, rel, clauses);
 }






 BuildParameterizedTidPaths(root, rel, rel->joininfo);
}
