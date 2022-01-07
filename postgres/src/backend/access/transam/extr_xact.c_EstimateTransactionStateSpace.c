
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
typedef int TransactionId ;
struct TYPE_3__ {int nChildXids; int fullTransactionId; struct TYPE_3__* parent; } ;
typedef int Size ;


 TYPE_1__* CurrentTransactionState ;
 scalar_t__ FullTransactionIdIsValid (int ) ;
 int SerializedTransactionStateHeaderSize ;
 int add_size (int ,int) ;
 int mul_size (int,int ) ;

Size
EstimateTransactionStateSpace(void)
{
 TransactionState s;
 Size nxids = 0;
 Size size = SerializedTransactionStateHeaderSize;

 for (s = CurrentTransactionState; s != ((void*)0); s = s->parent)
 {
  if (FullTransactionIdIsValid(s->fullTransactionId))
   nxids = add_size(nxids, 1);
  nxids = add_size(nxids, s->nChildXids);
 }

 return add_size(size, mul_size(sizeof(TransactionId), nxids));
}
