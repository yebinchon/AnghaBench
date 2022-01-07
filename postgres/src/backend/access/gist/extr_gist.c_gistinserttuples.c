
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int buffer; } ;
struct TYPE_7__ {int is_build; int heapRel; int freespace; int r; } ;
typedef int OffsetNumber ;
typedef int List ;
typedef int IndexTuple ;
typedef int GISTSTATE ;
typedef TYPE_1__ GISTInsertState ;
typedef TYPE_2__ GISTInsertStack ;
typedef int Buffer ;


 scalar_t__ BufferIsValid (int ) ;
 int CheckForSerializableConflictIn (int ,int *,int ) ;
 int GIST_UNLOCK ;
 int LockBuffer (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int gistfinishsplit (TYPE_1__*,TYPE_2__*,int *,int *,int) ;
 int gistplacetopage (int ,int ,int *,int ,int *,int,int ,int *,int ,int **,int,int ,int ) ;

__attribute__((used)) static bool
gistinserttuples(GISTInsertState *state, GISTInsertStack *stack,
     GISTSTATE *giststate,
     IndexTuple *tuples, int ntup, OffsetNumber oldoffnum,
     Buffer leftchild, Buffer rightchild,
     bool unlockbuf, bool unlockleftchild)
{
 List *splitinfo;
 bool is_split;





 CheckForSerializableConflictIn(state->r, ((void*)0), stack->buffer);


 is_split = gistplacetopage(state->r, state->freespace, giststate,
          stack->buffer,
          tuples, ntup,
          oldoffnum, ((void*)0),
          leftchild,
          &splitinfo,
          1,
          state->heapRel,
          state->is_build);






 if (BufferIsValid(rightchild))
  UnlockReleaseBuffer(rightchild);
 if (BufferIsValid(leftchild) && unlockleftchild)
  LockBuffer(leftchild, GIST_UNLOCK);







 if (splitinfo)
  gistfinishsplit(state, stack, giststate, splitinfo, unlockbuf);
 else if (unlockbuf)
  LockBuffer(stack->buffer, GIST_UNLOCK);

 return is_split;
}
