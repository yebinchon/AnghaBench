
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int backslashResult ;
typedef int PsqlScanState ;
typedef int PQExpBuffer ;
typedef int ConditionalStack ;


 int Assert (int) ;






 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 int conditional_stack_peek (int ) ;
 int conditional_stack_pop (int ) ;
 int discard_query_text (int ,int ,int ) ;
 int pg_log_error (char*) ;

__attribute__((used)) static backslashResult
exec_command_endif(PsqlScanState scan_state, ConditionalStack cstack,
       PQExpBuffer query_buf)
{
 bool success = 1;

 switch (conditional_stack_peek(cstack))
 {
  case 128:
  case 132:

   success = conditional_stack_pop(cstack);
   Assert(success);
   break;
  case 131:
  case 130:
  case 133:




   discard_query_text(scan_state, cstack, query_buf);


   success = conditional_stack_pop(cstack);
   Assert(success);
   break;
  case 129:

   pg_log_error("\\endif: no matching \\if");
   success = 0;
   break;
 }

 return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}
