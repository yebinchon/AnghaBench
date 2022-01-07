
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db; int * cur_cmd_source; int * copyStream; int * queryFout; scalar_t__ gfname; } ;
typedef int PGresult ;
typedef int FILE ;
typedef int ExecStatusType ;


 int AcceptResult (int *) ;
 int CheckConnection () ;





 int PQbinaryTuples (int *) ;
 int PQclear (int *) ;
 int * PQgetResult (int ) ;
 int PQresultStatus (int *) ;
 int ResetCancelConn () ;
 int SetCancelConn () ;
 int SetResultVariables (int *,int) ;
 int disable_sigpipe_trap () ;
 int fclose (int *) ;
 scalar_t__ handleCopyIn (int ,int *,int ,int **) ;
 scalar_t__ handleCopyOut (int ,int *,int **) ;
 scalar_t__ openQueryOutputFile (scalar_t__,int **,int*) ;
 int pclose (int *) ;
 int pg_log_error (char*,int) ;
 TYPE_1__ pset ;
 int restore_sigpipe_trap () ;

__attribute__((used)) static bool
ProcessResult(PGresult **results)
{
 bool success = 1;
 bool first_cycle = 1;

 for (;;)
 {
  ExecStatusType result_status;
  bool is_copy;
  PGresult *next_result;

  if (!AcceptResult(*results))
  {





   success = 0;
   break;
  }

  result_status = PQresultStatus(*results);
  switch (result_status)
  {
   case 129:
   case 132:
   case 128:
    is_copy = 0;
    break;

   case 130:
   case 131:
    is_copy = 1;
    break;

   default:

    is_copy = 0;
    pg_log_error("unexpected PQresultStatus: %d", result_status);
    break;
  }

  if (is_copy)
  {
   FILE *copystream;
   PGresult *copy_result;

   SetCancelConn();
   if (result_status == 130)
   {
    bool need_close = 0;
    bool is_pipe = 0;

    if (pset.copyStream)
    {

     copystream = pset.copyStream;
    }
    else if (pset.gfname)
    {

     if (openQueryOutputFile(pset.gfname,
           &copystream, &is_pipe))
     {
      need_close = 1;
      if (is_pipe)
       disable_sigpipe_trap();
     }
     else
      copystream = ((void*)0);
    }
    else
    {

     copystream = pset.queryFout;
    }

    success = handleCopyOut(pset.db,
          copystream,
          &copy_result)
     && success
     && (copystream != ((void*)0));






    if (copystream == pset.queryFout)
    {
     PQclear(copy_result);
     copy_result = ((void*)0);
    }

    if (need_close)
    {

     if (is_pipe)
     {
      pclose(copystream);
      restore_sigpipe_trap();
     }
     else
     {
      fclose(copystream);
     }
    }
   }
   else
   {

    copystream = pset.copyStream ? pset.copyStream : pset.cur_cmd_source;
    success = handleCopyIn(pset.db,
            copystream,
            PQbinaryTuples(*results),
            &copy_result) && success;
   }
   ResetCancelConn();





   PQclear(*results);
   *results = copy_result;
  }
  else if (first_cycle)
  {

   break;
  }






  next_result = PQgetResult(pset.db);
  if (!next_result)
   break;

  PQclear(*results);
  *results = next_result;
  first_cycle = 0;
 }

 SetResultVariables(*results, success);


 if (!first_cycle && !CheckConnection())
  return 0;

 return success;
}
