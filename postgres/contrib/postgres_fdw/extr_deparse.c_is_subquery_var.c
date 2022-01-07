
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int varno; } ;
typedef TYPE_1__ Var ;
struct TYPE_12__ {scalar_t__ make_innerrel_subquery; scalar_t__ make_outerrel_subquery; int lower_subquery_rels; TYPE_2__* innerrel; TYPE_2__* outerrel; } ;
struct TYPE_11__ {int relids; scalar_t__ fdw_private; } ;
typedef TYPE_2__ RelOptInfo ;
typedef TYPE_3__ PgFdwRelationInfo ;


 int Assert (int) ;
 scalar_t__ IS_JOIN_REL (TYPE_2__*) ;
 scalar_t__ IS_SIMPLE_REL (TYPE_2__*) ;
 int bms_is_member (int ,int ) ;
 int get_relation_column_alias_ids (TYPE_1__*,TYPE_2__*,int*,int*) ;

__attribute__((used)) static bool
is_subquery_var(Var *node, RelOptInfo *foreignrel, int *relno, int *colno)
{
 PgFdwRelationInfo *fpinfo = (PgFdwRelationInfo *) foreignrel->fdw_private;
 RelOptInfo *outerrel = fpinfo->outerrel;
 RelOptInfo *innerrel = fpinfo->innerrel;


 Assert(IS_SIMPLE_REL(foreignrel) || IS_JOIN_REL(foreignrel));





 if (!IS_JOIN_REL(foreignrel))
  return 0;





 if (!bms_is_member(node->varno, fpinfo->lower_subquery_rels))
  return 0;

 if (bms_is_member(node->varno, outerrel->relids))
 {




  if (fpinfo->make_outerrel_subquery)
  {
   get_relation_column_alias_ids(node, outerrel, relno, colno);
   return 1;
  }


  return is_subquery_var(node, outerrel, relno, colno);
 }
 else
 {
  Assert(bms_is_member(node->varno, innerrel->relids));





  if (fpinfo->make_innerrel_subquery)
  {
   get_relation_column_alias_ids(node, innerrel, relno, colno);
   return 1;
  }


  return is_subquery_var(node, innerrel, relno, colno);
 }
}
