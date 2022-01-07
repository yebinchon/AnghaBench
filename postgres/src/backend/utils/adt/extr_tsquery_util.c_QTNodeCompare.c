
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ nchild; TYPE_1__* valnode; int word; struct TYPE_10__** child; } ;
struct TYPE_9__ {scalar_t__ valcrc; int length; } ;
struct TYPE_8__ {scalar_t__ oper; scalar_t__ distance; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_3__ qoperand; TYPE_2__ qoperator; } ;
typedef TYPE_2__ QueryOperator ;
typedef TYPE_3__ QueryOperand ;
typedef TYPE_4__ QTNode ;


 int ERROR ;
 scalar_t__ OP_PHRASE ;
 scalar_t__ QI_OPR ;
 scalar_t__ QI_VAL ;
 int check_stack_depth () ;
 int elog (int ,char*,scalar_t__) ;
 int tsCompareString (int ,int ,int ,int ,int) ;

int
QTNodeCompare(QTNode *an, QTNode *bn)
{

 check_stack_depth();

 if (an->valnode->type != bn->valnode->type)
  return (an->valnode->type > bn->valnode->type) ? -1 : 1;

 if (an->valnode->type == QI_OPR)
 {
  QueryOperator *ao = &an->valnode->qoperator;
  QueryOperator *bo = &bn->valnode->qoperator;

  if (ao->oper != bo->oper)
   return (ao->oper > bo->oper) ? -1 : 1;

  if (an->nchild != bn->nchild)
   return (an->nchild > bn->nchild) ? -1 : 1;

  {
   int i,
      res;

   for (i = 0; i < an->nchild; i++)
    if ((res = QTNodeCompare(an->child[i], bn->child[i])) != 0)
     return res;
  }

  if (ao->oper == OP_PHRASE && ao->distance != bo->distance)
   return (ao->distance > bo->distance) ? -1 : 1;

  return 0;
 }
 else if (an->valnode->type == QI_VAL)
 {
  QueryOperand *ao = &an->valnode->qoperand;
  QueryOperand *bo = &bn->valnode->qoperand;

  if (ao->valcrc != bo->valcrc)
  {
   return (ao->valcrc > bo->valcrc) ? -1 : 1;
  }

  return tsCompareString(an->word, ao->length, bn->word, bo->length, 0);
 }
 else
 {
  elog(ERROR, "unrecognized QueryItem type: %d", an->valnode->type);
  return 0;
 }
}
