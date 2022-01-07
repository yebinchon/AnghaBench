
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int baserestrict_min_security; int baserestrictinfo; } ;
struct TYPE_8__ {int security_level; int required_relids; } ;
typedef TYPE_1__ RestrictInfo ;
typedef int Relids ;
typedef TYPE_2__ RelOptInfo ;
typedef int PlannerInfo ;




 int ERROR ;
 int Min (int ,int ) ;
 int add_join_clause_to_rels (int *,TYPE_1__*,int ) ;
 int bms_membership (int ) ;
 int bms_singleton_member (int ) ;
 int check_hashjoinable (TYPE_1__*) ;
 int elog (int ,char*) ;
 TYPE_2__* find_base_rel (int *,int ) ;
 int lappend (int ,TYPE_1__*) ;

void
distribute_restrictinfo_to_rels(PlannerInfo *root,
        RestrictInfo *restrictinfo)
{
 Relids relids = restrictinfo->required_relids;
 RelOptInfo *rel;

 switch (bms_membership(relids))
 {
  case 128:





   rel = find_base_rel(root, bms_singleton_member(relids));


   rel->baserestrictinfo = lappend(rel->baserestrictinfo,
           restrictinfo);

   rel->baserestrict_min_security = Min(rel->baserestrict_min_security,
             restrictinfo->security_level);
   break;
  case 129:
   check_hashjoinable(restrictinfo);




   add_join_clause_to_rels(root, restrictinfo, relids);
   break;
  default:





   elog(ERROR, "cannot cope with variable-free clause");
   break;
 }
}
