
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* scanrel; TYPE_4__* root; int buf; } ;
typedef TYPE_2__ deparse_expr_cxt ;
struct TYPE_15__ {int lower_subquery_rels; } ;
struct TYPE_14__ {int strength; } ;
struct TYPE_13__ {int rowMarks; TYPE_1__* parse; } ;
struct TYPE_12__ {int relids; scalar_t__ fdw_private; } ;
struct TYPE_10__ {int resultRelation; scalar_t__ commandType; } ;
typedef int StringInfo ;
typedef TYPE_3__ RelOptInfo ;
typedef TYPE_4__ PlannerInfo ;
typedef TYPE_5__ PlanRowMark ;
typedef TYPE_6__ PgFdwRelationInfo ;


 scalar_t__ BMS_MULTIPLE ;
 scalar_t__ CMD_DELETE ;
 scalar_t__ CMD_UPDATE ;
 scalar_t__ IS_JOIN_REL (TYPE_3__*) ;





 int REL_ALIAS_PREFIX ;
 int appendStringInfo (int ,char*,int ,int) ;
 int appendStringInfoString (int ,char*) ;
 scalar_t__ bms_is_member (int,int ) ;
 scalar_t__ bms_membership (int ) ;
 int bms_next_member (int ,int) ;
 TYPE_5__* get_plan_rowmark (int ,int) ;

__attribute__((used)) static void
deparseLockingClause(deparse_expr_cxt *context)
{
 StringInfo buf = context->buf;
 PlannerInfo *root = context->root;
 RelOptInfo *rel = context->scanrel;
 PgFdwRelationInfo *fpinfo = (PgFdwRelationInfo *) rel->fdw_private;
 int relid = -1;

 while ((relid = bms_next_member(rel->relids, relid)) >= 0)
 {




  if (bms_is_member(relid, fpinfo->lower_subquery_rels))
   continue;
  if (relid == root->parse->resultRelation &&
   (root->parse->commandType == CMD_UPDATE ||
    root->parse->commandType == CMD_DELETE))
  {

   appendStringInfoString(buf, " FOR UPDATE");


   if (IS_JOIN_REL(rel))
    appendStringInfo(buf, " OF %s%d", REL_ALIAS_PREFIX, relid);
  }
  else
  {
   PlanRowMark *rc = get_plan_rowmark(root->rowMarks, relid);

   if (rc)
   {
    switch (rc->strength)
    {
     case 128:

      break;
     case 132:
     case 130:
      appendStringInfoString(buf, " FOR SHARE");
      break;
     case 131:
     case 129:
      appendStringInfoString(buf, " FOR UPDATE");
      break;
    }


    if (bms_membership(rel->relids) == BMS_MULTIPLE &&
     rc->strength != 128)
     appendStringInfo(buf, " OF %s%d", REL_ALIAS_PREFIX, relid);
   }
  }
 }
}
