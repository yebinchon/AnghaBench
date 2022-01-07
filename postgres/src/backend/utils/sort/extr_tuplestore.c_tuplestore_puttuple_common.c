
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int status; int readptrcount; int activeptr; int backward; int eflags; int writepos_offset; int writepos_file; TYPE_2__* readptrs; int myfile; int interXact; int resowner; int memtupsize; int memtupcount; void** memtuples; int tuples; } ;
typedef TYPE_1__ Tuplestorestate ;
struct TYPE_9__ {int eof_reached; int offset; int file; int current; } ;
typedef TYPE_2__ TSReadPointer ;
typedef int ResourceOwner ;


 int Assert (int) ;
 int BufFileCreateTemp (int ) ;
 int BufFileSeek (int ,int ,int ,int ) ;
 int BufFileTell (int ,int *,int *) ;
 int CurrentResourceOwner ;
 int ERROR ;
 int EXEC_FLAG_BACKWARD ;
 int LACKMEM (TYPE_1__*) ;
 int PrepareTempTablespaces () ;
 int SEEK_SET ;



 int WRITETUP (TYPE_1__*,void*) ;
 int dumptuples (TYPE_1__*) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*) ;
 int grow_memtuples (TYPE_1__*) ;

__attribute__((used)) static void
tuplestore_puttuple_common(Tuplestorestate *state, void *tuple)
{
 TSReadPointer *readptr;
 int i;
 ResourceOwner oldowner;

 state->tuples++;

 switch (state->status)
 {
  case 130:




   readptr = state->readptrs;
   for (i = 0; i < state->readptrcount; readptr++, i++)
   {
    if (readptr->eof_reached && i != state->activeptr)
    {
     readptr->eof_reached = 0;
     readptr->current = state->memtupcount;
    }
   }







   if (state->memtupcount >= state->memtupsize - 1)
   {
    (void) grow_memtuples(state);
    Assert(state->memtupcount < state->memtupsize);
   }


   state->memtuples[state->memtupcount++] = tuple;




   if (state->memtupcount < state->memtupsize && !LACKMEM(state))
    return;





   PrepareTempTablespaces();


   oldowner = CurrentResourceOwner;
   CurrentResourceOwner = state->resowner;

   state->myfile = BufFileCreateTemp(state->interXact);

   CurrentResourceOwner = oldowner;






   state->backward = (state->eflags & EXEC_FLAG_BACKWARD) != 0;
   state->status = 128;
   dumptuples(state);
   break;
  case 128:






   readptr = state->readptrs;
   for (i = 0; i < state->readptrcount; readptr++, i++)
   {
    if (readptr->eof_reached && i != state->activeptr)
    {
     readptr->eof_reached = 0;
     BufFileTell(state->myfile,
        &readptr->file,
        &readptr->offset);
    }
   }

   WRITETUP(state, tuple);
   break;
  case 129:




   if (!state->readptrs[state->activeptr].eof_reached)
    BufFileTell(state->myfile,
       &state->readptrs[state->activeptr].file,
       &state->readptrs[state->activeptr].offset);
   if (BufFileSeek(state->myfile,
       state->writepos_file, state->writepos_offset,
       SEEK_SET) != 0)
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not seek in tuplestore temporary file: %m")));
   state->status = 128;




   readptr = state->readptrs;
   for (i = 0; i < state->readptrcount; readptr++, i++)
   {
    if (readptr->eof_reached && i != state->activeptr)
    {
     readptr->eof_reached = 0;
     readptr->file = state->writepos_file;
     readptr->offset = state->writepos_offset;
    }
   }

   WRITETUP(state, tuple);
   break;
  default:
   elog(ERROR, "invalid tuplestore state");
   break;
 }
}
