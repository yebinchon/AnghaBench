
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filename; int reached_eof; scalar_t__ is_copy_from; int copy_file; int is_program; } ;
typedef TYPE_1__* CopyState ;


 int Assert (int ) ;
 int ClosePipeStream (int ) ;
 int ERRCODE_EXTERNAL_ROUTINE_EXCEPTION ;
 int ERROR ;
 int SIGPIPE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errdetail_internal (char*,int ) ;
 int errmsg (char*,...) ;
 scalar_t__ wait_result_is_signal (int,int ) ;
 int wait_result_to_str (int) ;

__attribute__((used)) static void
ClosePipeToProgram(CopyState cstate)
{
 int pclose_rc;

 Assert(cstate->is_program);

 pclose_rc = ClosePipeStream(cstate->copy_file);
 if (pclose_rc == -1)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not close pipe to external command: %m")));
 else if (pclose_rc != 0)
 {






  if (cstate->is_copy_from && !cstate->reached_eof &&
   wait_result_is_signal(pclose_rc, SIGPIPE))
   return;

  ereport(ERROR,
    (errcode(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
     errmsg("program \"%s\" failed",
      cstate->filename),
     errdetail_internal("%s", wait_result_to_str(pclose_rc))));
 }
}
