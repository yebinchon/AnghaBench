
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bs_numtuples; int bs_currRangeStart; int bs_currentInsertBuf; int bs_rmAccess; int bs_pagesPerRange; int bs_irel; int bs_dtuple; int bs_bdesc; } ;
typedef int Size ;
typedef int BrinTuple ;
typedef TYPE_1__ BrinBuildState ;


 int brin_doinsert (int ,int ,int ,int *,int ,int *,int ) ;
 int * brin_form_tuple (int ,int ,int ,int *) ;
 int pfree (int *) ;

__attribute__((used)) static void
form_and_insert_tuple(BrinBuildState *state)
{
 BrinTuple *tup;
 Size size;

 tup = brin_form_tuple(state->bs_bdesc, state->bs_currRangeStart,
        state->bs_dtuple, &size);
 brin_doinsert(state->bs_irel, state->bs_pagesPerRange, state->bs_rmAccess,
      &state->bs_currentInsertBuf, state->bs_currRangeStart,
      tup, size);
 state->bs_numtuples++;

 pfree(tup);
}
