
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int tupstate; int xid; int pointer; int nextOffset; int size; } ;
struct TYPE_5__ {int myXid; int deadTupleStorage; } ;
typedef TYPE_1__ SpGistState ;
typedef TYPE_2__* SpGistDeadTuple ;
typedef int OffsetNumber ;
typedef int BlockNumber ;


 int Assert (int ) ;
 int InvalidOffsetNumber ;
 int InvalidTransactionId ;
 int ItemPointerSet (int *,int ,int ) ;
 int ItemPointerSetInvalid (int *) ;
 int SGDTSIZE ;
 int SPGIST_REDIRECT ;
 int TransactionIdIsValid (int ) ;

SpGistDeadTuple
spgFormDeadTuple(SpGistState *state, int tupstate,
     BlockNumber blkno, OffsetNumber offnum)
{
 SpGistDeadTuple tuple = (SpGistDeadTuple) state->deadTupleStorage;

 tuple->tupstate = tupstate;
 tuple->size = SGDTSIZE;
 tuple->nextOffset = InvalidOffsetNumber;

 if (tupstate == SPGIST_REDIRECT)
 {
  ItemPointerSet(&tuple->pointer, blkno, offnum);
  Assert(TransactionIdIsValid(state->myXid));
  tuple->xid = state->myXid;
 }
 else
 {
  ItemPointerSetInvalid(&tuple->pointer);
  tuple->xid = InvalidTransactionId;
 }

 return tuple;
}
