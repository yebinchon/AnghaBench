
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t activeptr; int status; int myfile; int truncated; TYPE_2__* readptrs; } ;
typedef TYPE_1__ Tuplestorestate ;
struct TYPE_5__ {int eflags; int eof_reached; long offset; int file; int current; } ;
typedef TYPE_2__ TSReadPointer ;


 int Assert (int) ;
 int BufFileSeek (int ,int ,long,int ) ;
 int ERROR ;
 int EXEC_FLAG_REWIND ;
 int SEEK_SET ;



 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*) ;

void
tuplestore_rescan(Tuplestorestate *state)
{
 TSReadPointer *readptr = &state->readptrs[state->activeptr];

 Assert(readptr->eflags & EXEC_FLAG_REWIND);
 Assert(!state->truncated);

 switch (state->status)
 {
  case 130:
   readptr->eof_reached = 0;
   readptr->current = 0;
   break;
  case 128:
   readptr->eof_reached = 0;
   readptr->file = 0;
   readptr->offset = 0L;
   break;
  case 129:
   readptr->eof_reached = 0;
   if (BufFileSeek(state->myfile, 0, 0L, SEEK_SET) != 0)
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not seek in tuplestore temporary file: %m")));
   break;
  default:
   elog(ERROR, "invalid tuplestore state");
   break;
 }
}
