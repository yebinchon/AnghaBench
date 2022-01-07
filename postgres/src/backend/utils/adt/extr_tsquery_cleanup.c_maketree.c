
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* left; struct TYPE_8__* right; TYPE_2__* valnode; } ;
struct TYPE_6__ {scalar_t__ oper; int left; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ qoperator; } ;
typedef TYPE_2__ QueryItem ;
typedef TYPE_3__ NODE ;


 scalar_t__ OP_NOT ;
 scalar_t__ QI_OPR ;
 int check_stack_depth () ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static NODE *
maketree(QueryItem *in)
{
 NODE *node = (NODE *) palloc(sizeof(NODE));


 check_stack_depth();

 node->valnode = in;
 node->right = node->left = ((void*)0);
 if (in->type == QI_OPR)
 {
  node->right = maketree(in + 1);
  if (in->qoperator.oper != OP_NOT)
   node->left = maketree(in + in->qoperator.left);
 }
 return node;
}
