
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef TYPE_1__ NODE ;


 int check_stack_depth () ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
freetree(NODE *node)
{

 check_stack_depth();

 if (!node)
  return;
 if (node->left)
  freetree(node->left);
 if (node->right)
  freetree(node->right);
 pfree(node);
}
