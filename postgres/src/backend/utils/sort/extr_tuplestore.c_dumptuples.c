
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int memtupdeleted; int readptrcount; int memtupcount; int * memtuples; int myfile; TYPE_2__* readptrs; } ;
typedef TYPE_1__ Tuplestorestate ;
struct TYPE_6__ {int current; int offset; int file; int eof_reached; } ;
typedef TYPE_2__ TSReadPointer ;


 int BufFileTell (int ,int *,int *) ;
 int WRITETUP (TYPE_1__*,int ) ;

__attribute__((used)) static void
dumptuples(Tuplestorestate *state)
{
 int i;

 for (i = state->memtupdeleted;; i++)
 {
  TSReadPointer *readptr = state->readptrs;
  int j;

  for (j = 0; j < state->readptrcount; readptr++, j++)
  {
   if (i == readptr->current && !readptr->eof_reached)
    BufFileTell(state->myfile,
       &readptr->file, &readptr->offset);
  }
  if (i >= state->memtupcount)
   break;
  WRITETUP(state, state->memtuples[i]);
 }
 state->memtupdeleted = 0;
 state->memtupcount = 0;
}
