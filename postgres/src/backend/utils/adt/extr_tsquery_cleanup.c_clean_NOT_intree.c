
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* left; struct TYPE_10__* right; TYPE_2__* valnode; } ;
struct TYPE_8__ {scalar_t__ oper; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__ qoperator; } ;
typedef TYPE_3__ NODE ;


 int Assert (int) ;
 scalar_t__ OP_AND ;
 scalar_t__ OP_NOT ;
 scalar_t__ OP_OR ;
 scalar_t__ OP_PHRASE ;
 scalar_t__ QI_VAL ;
 int check_stack_depth () ;
 int freetree (TYPE_3__*) ;
 int pfree (TYPE_3__*) ;

__attribute__((used)) static NODE *
clean_NOT_intree(NODE *node)
{

 check_stack_depth();

 if (node->valnode->type == QI_VAL)
  return node;

 if (node->valnode->qoperator.oper == OP_NOT)
 {
  freetree(node);
  return ((void*)0);
 }


 if (node->valnode->qoperator.oper == OP_OR)
 {
  if ((node->left = clean_NOT_intree(node->left)) == ((void*)0) ||
   (node->right = clean_NOT_intree(node->right)) == ((void*)0))
  {
   freetree(node);
   return ((void*)0);
  }
 }
 else
 {
  NODE *res = node;

  Assert(node->valnode->qoperator.oper == OP_AND ||
      node->valnode->qoperator.oper == OP_PHRASE);

  node->left = clean_NOT_intree(node->left);
  node->right = clean_NOT_intree(node->right);
  if (node->left == ((void*)0) && node->right == ((void*)0))
  {
   pfree(node);
   res = ((void*)0);
  }
  else if (node->left == ((void*)0))
  {
   res = node->right;
   pfree(node);
  }
  else if (node->right == ((void*)0))
  {
   res = node->left;
   pfree(node);
  }
  return res;
 }
 return node;
}
