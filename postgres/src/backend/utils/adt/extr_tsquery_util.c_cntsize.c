
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int nchild; TYPE_2__* valnode; struct TYPE_7__** child; } ;
struct TYPE_5__ {scalar_t__ length; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ qoperand; } ;
typedef TYPE_3__ QTNode ;


 scalar_t__ QI_OPR ;
 int check_stack_depth () ;

__attribute__((used)) static void
cntsize(QTNode *in, int *sumlen, int *nnode)
{

 check_stack_depth();

 *nnode += 1;
 if (in->valnode->type == QI_OPR)
 {
  int i;

  for (i = 0; i < in->nchild; i++)
   cntsize(in->child[i], sumlen, nnode);
 }
 else
 {
  *sumlen += in->valnode->qoperand.length + 1;
 }
}
