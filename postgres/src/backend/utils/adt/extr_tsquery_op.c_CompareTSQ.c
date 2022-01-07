
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ size; } ;
typedef TYPE_1__* TSQuery ;
typedef int QTNode ;


 int GETOPERAND (TYPE_1__*) ;
 int GETQUERY (TYPE_1__*) ;
 int * QT2QTN (int ,int ) ;
 int QTNFree (int *) ;
 int QTNodeCompare (int *,int *) ;
 scalar_t__ VARSIZE (TYPE_1__*) ;

__attribute__((used)) static int
CompareTSQ(TSQuery a, TSQuery b)
{
 if (a->size != b->size)
 {
  return (a->size < b->size) ? -1 : 1;
 }
 else if (VARSIZE(a) != VARSIZE(b))
 {
  return (VARSIZE(a) < VARSIZE(b)) ? -1 : 1;
 }
 else if (a->size != 0)
 {
  QTNode *an = QT2QTN(GETQUERY(a), GETOPERAND(a));
  QTNode *bn = QT2QTN(GETQUERY(b), GETOPERAND(b));
  int res = QTNodeCompare(an, bn);

  QTNFree(an);
  QTNFree(bn);

  return res;
 }

 return 0;
}
