
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int copycontext; int * filename; int copy_file; scalar_t__ is_program; } ;
typedef TYPE_1__* CopyState ;


 int ClosePipeToProgram (TYPE_1__*) ;
 int ERROR ;
 scalar_t__ FreeFile (int ) ;
 int MemoryContextDelete (int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int *) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
EndCopy(CopyState cstate)
{
 if (cstate->is_program)
 {
  ClosePipeToProgram(cstate);
 }
 else
 {
  if (cstate->filename != ((void*)0) && FreeFile(cstate->copy_file))
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not close file \"%s\": %m",
       cstate->filename)));
 }

 MemoryContextDelete(cstate->copycontext);
 pfree(cstate);
}
