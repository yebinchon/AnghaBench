
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t activeptr; int status; void** memtuples; int myfile; int truncated; int writepos_offset; int writepos_file; int memtupdeleted; int memtupcount; TYPE_2__* readptrs; } ;
typedef TYPE_1__ Tuplestorestate ;
struct TYPE_7__ {int eflags; int eof_reached; long offset; int file; int current; } ;
typedef TYPE_2__ TSReadPointer ;


 int Assert (int) ;
 int BufFileSeek (int ,int ,long,int ) ;
 int BufFileTell (int ,int *,int *) ;
 int ERROR ;
 int EXEC_FLAG_BACKWARD ;
 void* READTUP (TYPE_1__*,unsigned int) ;
 int SEEK_CUR ;
 int SEEK_SET ;



 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*) ;
 unsigned int getlen (TYPE_1__*,int) ;

__attribute__((used)) static void *
tuplestore_gettuple(Tuplestorestate *state, bool forward,
     bool *should_free)
{
 TSReadPointer *readptr = &state->readptrs[state->activeptr];
 unsigned int tuplen;
 void *tup;

 Assert(forward || (readptr->eflags & EXEC_FLAG_BACKWARD));

 switch (state->status)
 {
  case 130:
   *should_free = 0;
   if (forward)
   {
    if (readptr->eof_reached)
     return ((void*)0);
    if (readptr->current < state->memtupcount)
    {

     return state->memtuples[readptr->current++];
    }
    readptr->eof_reached = 1;
    return ((void*)0);
   }
   else
   {




    if (readptr->eof_reached)
    {
     readptr->current = state->memtupcount;
     readptr->eof_reached = 0;
    }
    else
    {
     if (readptr->current <= state->memtupdeleted)
     {
      Assert(!state->truncated);
      return ((void*)0);
     }
     readptr->current--;
    }
    if (readptr->current <= state->memtupdeleted)
    {
     Assert(!state->truncated);
     return ((void*)0);
    }
    return state->memtuples[readptr->current - 1];
   }
   break;

  case 128:

   if (readptr->eof_reached && forward)
    return ((void*)0);




   BufFileTell(state->myfile,
      &state->writepos_file, &state->writepos_offset);
   if (!readptr->eof_reached)
    if (BufFileSeek(state->myfile,
        readptr->file, readptr->offset,
        SEEK_SET) != 0)
     ereport(ERROR,
       (errcode_for_file_access(),
        errmsg("could not seek in tuplestore temporary file: %m")));
   state->status = 129;


  case 129:
   *should_free = 1;
   if (forward)
   {
    if ((tuplen = getlen(state, 1)) != 0)
    {
     tup = READTUP(state, tuplen);
     return tup;
    }
    else
    {
     readptr->eof_reached = 1;
     return ((void*)0);
    }
   }
   if (BufFileSeek(state->myfile, 0, -(long) sizeof(unsigned int),
       SEEK_CUR) != 0)
   {

    readptr->eof_reached = 0;
    Assert(!state->truncated);
    return ((void*)0);
   }
   tuplen = getlen(state, 0);

   if (readptr->eof_reached)
   {
    readptr->eof_reached = 0;

   }
   else
   {



    if (BufFileSeek(state->myfile, 0,
        -(long) (tuplen + 2 * sizeof(unsigned int)),
        SEEK_CUR) != 0)
    {






     if (BufFileSeek(state->myfile, 0,
         -(long) (tuplen + sizeof(unsigned int)),
         SEEK_CUR) != 0)
      ereport(ERROR,
        (errcode_for_file_access(),
         errmsg("could not seek in tuplestore temporary file: %m")));
     Assert(!state->truncated);
     return ((void*)0);
    }
    tuplen = getlen(state, 0);
   }






   if (BufFileSeek(state->myfile, 0,
       -(long) tuplen,
       SEEK_CUR) != 0)
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not seek in tuplestore temporary file: %m")));
   tup = READTUP(state, tuplen);
   return tup;

  default:
   elog(ERROR, "invalid tuplestore state");
   return ((void*)0);
 }
}
