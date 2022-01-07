
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OffsetNumber ;
typedef int IndexTuple ;
typedef int GISTSTATE ;
typedef int GISTInsertState ;
typedef int GISTInsertStack ;


 int InvalidBuffer ;
 int gistinserttuples (int *,int *,int *,int *,int,int ,int ,int ,int,int) ;

__attribute__((used)) static bool
gistinserttuple(GISTInsertState *state, GISTInsertStack *stack,
    GISTSTATE *giststate, IndexTuple tuple, OffsetNumber oldoffnum)
{
 return gistinserttuples(state, stack, giststate, &tuple, 1, oldoffnum,
       InvalidBuffer, InvalidBuffer, 0, 0);
}
