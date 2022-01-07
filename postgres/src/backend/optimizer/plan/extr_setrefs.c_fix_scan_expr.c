
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int rtoffset; TYPE_3__* root; } ;
typedef TYPE_2__ fix_scan_expr_context ;
struct TYPE_9__ {scalar_t__ multiexpr_params; scalar_t__ minmax_aggs; TYPE_1__* glob; } ;
struct TYPE_7__ {scalar_t__ lastPHId; } ;
typedef TYPE_3__ PlannerInfo ;
typedef int Node ;


 scalar_t__ NIL ;
 int * fix_scan_expr_mutator (int *,TYPE_2__*) ;
 int fix_scan_expr_walker (int *,TYPE_2__*) ;

__attribute__((used)) static Node *
fix_scan_expr(PlannerInfo *root, Node *node, int rtoffset)
{
 fix_scan_expr_context context;

 context.root = root;
 context.rtoffset = rtoffset;

 if (rtoffset != 0 ||
  root->multiexpr_params != NIL ||
  root->glob->lastPHId != 0 ||
  root->minmax_aggs != NIL)
 {
  return fix_scan_expr_mutator(node, &context);
 }
 else
 {
  (void) fix_scan_expr_walker(node, &context);
  return node;
 }
}
