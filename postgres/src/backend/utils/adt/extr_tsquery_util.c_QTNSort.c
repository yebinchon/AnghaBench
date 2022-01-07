
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int nchild; struct TYPE_7__** child; TYPE_2__* valnode; } ;
struct TYPE_5__ {scalar_t__ oper; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ qoperator; } ;
typedef TYPE_3__ QTNode ;


 scalar_t__ OP_PHRASE ;
 scalar_t__ QI_OPR ;
 int check_stack_depth () ;
 int cmpQTN ;
 int qsort (void*,int,int,int ) ;

void
QTNSort(QTNode *in)
{
 int i;


 check_stack_depth();

 if (in->valnode->type != QI_OPR)
  return;

 for (i = 0; i < in->nchild; i++)
  QTNSort(in->child[i]);
 if (in->nchild > 1 && in->valnode->qoperator.oper != OP_PHRASE)
  qsort((void *) in->child, in->nchild, sizeof(QTNode *), cmpQTN);
}
