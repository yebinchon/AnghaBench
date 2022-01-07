
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int params_list; int root; int foreignrel; TYPE_2__* scanrel; int buf; } ;
typedef TYPE_1__ deparse_expr_cxt ;
struct TYPE_9__ {int relids; } ;
typedef int StringInfo ;
typedef TYPE_2__ RelOptInfo ;
typedef int List ;
typedef int Index ;


 int Assert (int) ;
 scalar_t__ BMS_MULTIPLE ;
 scalar_t__ IS_JOIN_REL (TYPE_2__*) ;
 scalar_t__ IS_SIMPLE_REL (TYPE_2__*) ;
 int IS_UPPER_REL (int ) ;
 int * NIL ;
 int appendConditions (int *,TYPE_1__*) ;
 int appendStringInfoString (int ,char*) ;
 scalar_t__ bms_membership (int ) ;
 int deparseFromExprForRel (int ,int ,TYPE_2__*,int,int ,int *,int ) ;

__attribute__((used)) static void
deparseFromExpr(List *quals, deparse_expr_cxt *context)
{
 StringInfo buf = context->buf;
 RelOptInfo *scanrel = context->scanrel;


 Assert(!IS_UPPER_REL(context->foreignrel) ||
     IS_JOIN_REL(scanrel) || IS_SIMPLE_REL(scanrel));


 appendStringInfoString(buf, " FROM ");
 deparseFromExprForRel(buf, context->root, scanrel,
        (bms_membership(scanrel->relids) == BMS_MULTIPLE),
        (Index) 0, ((void*)0), context->params_list);


 if (quals != NIL)
 {
  appendStringInfoString(buf, " WHERE ");
  appendConditions(quals, context);
 }
}
