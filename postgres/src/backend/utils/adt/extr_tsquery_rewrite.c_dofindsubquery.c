
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int flags; int nchild; struct TYPE_16__** child; TYPE_2__* valnode; } ;
struct TYPE_14__ {scalar_t__ oper; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_1__ qoperator; } ;
typedef TYPE_3__ QTNode ;


 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ OP_NOT ;
 scalar_t__ QI_OPR ;
 int QTNFree (TYPE_3__*) ;
 int QTN_NOCHANGE ;
 int check_stack_depth () ;
 TYPE_3__* findeq (TYPE_3__*,TYPE_3__*,TYPE_3__*,int*) ;
 int pfree (TYPE_3__*) ;

__attribute__((used)) static QTNode *
dofindsubquery(QTNode *root, QTNode *ex, QTNode *subs, bool *isfind)
{

 check_stack_depth();


 CHECK_FOR_INTERRUPTS();


 root = findeq(root, ex, subs, isfind);


 if (root && (root->flags & QTN_NOCHANGE) == 0 &&
  root->valnode->type == QI_OPR)
 {
  int i,
     j = 0;





  for (i = 0; i < root->nchild; i++)
  {
   root->child[j] = dofindsubquery(root->child[i], ex, subs, isfind);
   if (root->child[j])
    j++;
  }

  root->nchild = j;





  if (root->nchild == 0)
  {
   QTNFree(root);
   root = ((void*)0);
  }
  else if (root->nchild == 1 && root->valnode->qoperator.oper != OP_NOT)
  {
   QTNode *nroot = root->child[0];

   pfree(root);
   root = nroot;
  }
 }

 return root;
}
