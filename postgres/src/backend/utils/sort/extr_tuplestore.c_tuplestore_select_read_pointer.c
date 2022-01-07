
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int readptrcount; int activeptr; int status; int myfile; int writepos_offset; int writepos_file; TYPE_2__* readptrs; } ;
typedef TYPE_1__ Tuplestorestate ;
struct TYPE_5__ {int offset; int file; int eof_reached; } ;
typedef TYPE_2__ TSReadPointer ;


 int Assert (int) ;
 int BufFileSeek (int ,int ,int ,int ) ;
 int BufFileTell (int ,int *,int *) ;
 int ERROR ;
 int SEEK_SET ;



 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*) ;

void
tuplestore_select_read_pointer(Tuplestorestate *state, int ptr)
{
 TSReadPointer *readptr;
 TSReadPointer *oldptr;

 Assert(ptr >= 0 && ptr < state->readptrcount);


 if (ptr == state->activeptr)
  return;

 readptr = &state->readptrs[ptr];
 oldptr = &state->readptrs[state->activeptr];

 switch (state->status)
 {
  case 130:
  case 128:

   break;
  case 129:





   if (!oldptr->eof_reached)
    BufFileTell(state->myfile,
       &oldptr->file,
       &oldptr->offset);







   if (readptr->eof_reached)
   {
    if (BufFileSeek(state->myfile,
        state->writepos_file,
        state->writepos_offset,
        SEEK_SET) != 0)
     ereport(ERROR,
       (errcode_for_file_access(),
        errmsg("could not seek in tuplestore temporary file: %m")));
   }
   else
   {
    if (BufFileSeek(state->myfile,
        readptr->file,
        readptr->offset,
        SEEK_SET) != 0)
     ereport(ERROR,
       (errcode_for_file_access(),
        errmsg("could not seek in tuplestore temporary file: %m")));
   }
   break;
  default:
   elog(ERROR, "invalid tuplestore state");
   break;
 }

 state->activeptr = ptr;
}
