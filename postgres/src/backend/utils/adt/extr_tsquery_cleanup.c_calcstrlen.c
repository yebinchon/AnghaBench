
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_9__ {struct TYPE_9__* left; TYPE_3__* valnode; struct TYPE_9__* right; } ;
struct TYPE_6__ {scalar_t__ oper; } ;
struct TYPE_7__ {scalar_t__ length; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__ qoperator; TYPE_2__ qoperand; } ;
typedef TYPE_4__ NODE ;


 int Assert (int) ;
 scalar_t__ OP_NOT ;
 scalar_t__ QI_OPR ;
 scalar_t__ QI_VAL ;

__attribute__((used)) static int32
calcstrlen(NODE *node)
{
 int32 size = 0;

 if (node->valnode->type == QI_VAL)
 {
  size = node->valnode->qoperand.length + 1;
 }
 else
 {
  Assert(node->valnode->type == QI_OPR);

  size = calcstrlen(node->right);
  if (node->valnode->qoperator.oper != OP_NOT)
   size += calcstrlen(node->left);
 }

 return size;
}
