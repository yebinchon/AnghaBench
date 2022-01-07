
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int relids; int baserestrict_min_security; int baserestrictinfo; } ;
struct TYPE_10__ {double norm_selec; int clause_relids; int security_level; } ;
struct TYPE_9__ {int lhs_strict; int delay_upper_joins; int semi_can_btree; int semi_can_hash; void* semi_rhs_exprs; void* semi_operators; int jointype; int min_righthand; int syn_righthand; int min_lefthand; int syn_lefthand; int type; } ;
typedef TYPE_1__ SpecialJoinInfo ;
typedef double Selectivity ;
typedef TYPE_2__ RestrictInfo ;
typedef TYPE_3__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int Node ;
typedef int Expr ;


 int JOIN_INNER ;
 int Min (int ,int ) ;
 void* NIL ;
 int T_SpecialJoinInfo ;
 int bms_difference (int ,int ) ;
 double clause_selectivity (int *,int *,int ,int ,TYPE_1__*) ;
 int lappend (int ,TYPE_2__*) ;
 TYPE_2__* make_restrictinfo (int *,int,int,int,int ,int *,int *,int *) ;

__attribute__((used)) static void
consider_new_or_clause(PlannerInfo *root, RelOptInfo *rel,
        Expr *orclause, RestrictInfo *join_or_rinfo)
{
 RestrictInfo *or_rinfo;
 Selectivity or_selec,
    orig_selec;





 or_rinfo = make_restrictinfo(orclause,
         1,
         0,
         0,
         join_or_rinfo->security_level,
         ((void*)0),
         ((void*)0),
         ((void*)0));






 or_selec = clause_selectivity(root, (Node *) or_rinfo,
          0, JOIN_INNER, ((void*)0));
 if (or_selec > 0.9)
  return;




 rel->baserestrictinfo = lappend(rel->baserestrictinfo, or_rinfo);
 rel->baserestrict_min_security = Min(rel->baserestrict_min_security,
           or_rinfo->security_level);
 if (or_selec > 0)
 {
  SpecialJoinInfo sjinfo;





  sjinfo.type = T_SpecialJoinInfo;
  sjinfo.min_lefthand = bms_difference(join_or_rinfo->clause_relids,
            rel->relids);
  sjinfo.min_righthand = rel->relids;
  sjinfo.syn_lefthand = sjinfo.min_lefthand;
  sjinfo.syn_righthand = sjinfo.min_righthand;
  sjinfo.jointype = JOIN_INNER;

  sjinfo.lhs_strict = 0;
  sjinfo.delay_upper_joins = 0;
  sjinfo.semi_can_btree = 0;
  sjinfo.semi_can_hash = 0;
  sjinfo.semi_operators = NIL;
  sjinfo.semi_rhs_exprs = NIL;


  orig_selec = clause_selectivity(root, (Node *) join_or_rinfo,
          0, JOIN_INNER, &sjinfo);


  join_or_rinfo->norm_selec = orig_selec / or_selec;

  if (join_or_rinfo->norm_selec > 1)
   join_or_rinfo->norm_selec = 1;

 }
}
