
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int readptrcount; int eflags; int status; int activeptr; int myfile; int writepos_offset; int writepos_file; TYPE_2__* readptrs; } ;
typedef TYPE_1__ Tuplestorestate ;
struct TYPE_5__ {scalar_t__ eflags; int offset; int file; int eof_reached; } ;
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
tuplestore_copy_read_pointer(Tuplestorestate *state,
        int srcptr, int destptr)
{
 TSReadPointer *sptr = &state->readptrs[srcptr];
 TSReadPointer *dptr = &state->readptrs[destptr];

 Assert(srcptr >= 0 && srcptr < state->readptrcount);
 Assert(destptr >= 0 && destptr < state->readptrcount);


 if (srcptr == destptr)
  return;

 if (dptr->eflags != sptr->eflags)
 {

  int eflags;
  int i;

  *dptr = *sptr;
  eflags = state->readptrs[0].eflags;
  for (i = 1; i < state->readptrcount; i++)
   eflags |= state->readptrs[i].eflags;
  state->eflags = eflags;
 }
 else
  *dptr = *sptr;

 switch (state->status)
 {
  case 130:
  case 128:

   break;
  case 129:
   if (destptr == state->activeptr)
   {
    if (dptr->eof_reached)
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
         dptr->file, dptr->offset,
         SEEK_SET) != 0)
      ereport(ERROR,
        (errcode_for_file_access(),
         errmsg("could not seek in tuplestore temporary file: %m")));
    }
   }
   else if (srcptr == state->activeptr)
   {
    if (!dptr->eof_reached)
     BufFileTell(state->myfile,
        &dptr->file,
        &dptr->offset);
   }
   break;
  default:
   elog(ERROR, "invalid tuplestore state");
   break;
 }
}
