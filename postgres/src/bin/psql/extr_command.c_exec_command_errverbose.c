
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_2__ {scalar_t__ last_error_result; } ;
typedef int PsqlScanState ;


 int PQERRORS_VERBOSE ;
 int PQSHOW_CONTEXT_ALWAYS ;
 int PQfreemem (char*) ;
 char* PQresultVerboseErrorMessage (scalar_t__,int ,int ) ;
 int PSQL_CMD_SKIP_LINE ;
 int _ (char*) ;
 int pg_log_error (char*,char*) ;
 TYPE_1__ pset ;
 int puts (int ) ;

__attribute__((used)) static backslashResult
exec_command_errverbose(PsqlScanState scan_state, bool active_branch)
{
 if (active_branch)
 {
  if (pset.last_error_result)
  {
   char *msg;

   msg = PQresultVerboseErrorMessage(pset.last_error_result,
             PQERRORS_VERBOSE,
             PQSHOW_CONTEXT_ALWAYS);
   if (msg)
   {
    pg_log_error("%s", msg);
    PQfreemem(msg);
   }
   else
    puts(_("out of memory"));
  }
  else
   puts(_("There is no previous error."));
 }

 return PSQL_CMD_SKIP_LINE;
}
