
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_5__ {int nchild; struct TYPE_5__** child; TYPE_1__* valnode; int flags; } ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_2__ QTNode ;


 scalar_t__ QI_VAL ;
 int check_stack_depth () ;

void
QTNClearFlags(QTNode *in, uint32 flags)
{

 check_stack_depth();

 in->flags &= ~flags;

 if (in->valnode->type != QI_VAL)
 {
  int i;

  for (i = 0; i < in->nchild; i++)
   QTNClearFlags(in->child[i], flags);
 }
}
