
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tuplen ;
struct TYPE_6__ {int indexRel; int tapeset; scalar_t__ randomAccess; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_7__ {int isnull1; int datum1; void* tuple; } ;
typedef TYPE_2__ SortTuple ;
typedef unsigned int* IndexTuple ;


 int LogicalTapeReadExact (int ,int,unsigned int*,int) ;
 int RelationGetDescr (int ) ;
 int index_getattr (unsigned int*,int,int ,int *) ;
 int readtup_alloc (TYPE_1__*,unsigned int) ;

__attribute__((used)) static void
readtup_index(Tuplesortstate *state, SortTuple *stup,
     int tapenum, unsigned int len)
{
 unsigned int tuplen = len - sizeof(unsigned int);
 IndexTuple tuple = (IndexTuple) readtup_alloc(state, tuplen);

 LogicalTapeReadExact(state->tapeset, tapenum,
       tuple, tuplen);
 if (state->randomAccess)
  LogicalTapeReadExact(state->tapeset, tapenum,
        &tuplen, sizeof(tuplen));
 stup->tuple = (void *) tuple;

 stup->datum1 = index_getattr(tuple,
         1,
         RelationGetDescr(state->indexRel),
         &stup->isnull1);
}
