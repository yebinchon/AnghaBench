
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QTNode ;


 int * dofindsubquery (int *,int *,int *,int*) ;

QTNode *
findsubquery(QTNode *root, QTNode *ex, QTNode *subs, bool *isfind)
{
 bool DidFind = 0;

 root = dofindsubquery(root, ex, subs, &DidFind);

 if (isfind)
  *isfind = DidFind;

 return root;
}
