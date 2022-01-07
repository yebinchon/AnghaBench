
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bs_bdesc; int bs_dtuple; int * bs_rmAccess; scalar_t__ bs_currRangeStart; int bs_pagesPerRange; int bs_currentInsertBuf; scalar_t__ bs_numtuples; int bs_irel; } ;
typedef int Relation ;
typedef int BrinRevmap ;
typedef TYPE_1__ BrinBuildState ;
typedef int BlockNumber ;


 int InvalidBuffer ;
 int brin_build_desc (int ) ;
 int brin_memtuple_initialize (int ,int ) ;
 int brin_new_memtuple (int ) ;
 TYPE_1__* palloc (int) ;

__attribute__((used)) static BrinBuildState *
initialize_brin_buildstate(Relation idxRel, BrinRevmap *revmap,
         BlockNumber pagesPerRange)
{
 BrinBuildState *state;

 state = palloc(sizeof(BrinBuildState));

 state->bs_irel = idxRel;
 state->bs_numtuples = 0;
 state->bs_currentInsertBuf = InvalidBuffer;
 state->bs_pagesPerRange = pagesPerRange;
 state->bs_currRangeStart = 0;
 state->bs_rmAccess = revmap;
 state->bs_bdesc = brin_build_desc(idxRel);
 state->bs_dtuple = brin_new_memtuple(state->bs_bdesc);

 brin_memtuple_initialize(state->bs_dtuple, state->bs_bdesc);

 return state;
}
