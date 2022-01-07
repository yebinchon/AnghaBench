
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int backslashResult ;
typedef int PsqlScanState ;
typedef int PQExpBuffer ;
typedef int ConditionalStack ;
 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 int conditional_stack_peek (int ) ;
 int conditional_stack_poke (int ,int) ;
 int discard_query_text (int ,int ,int ) ;
 int pg_log_error (char*) ;
 int save_query_text_state (int ,int ,int ) ;

__attribute__((used)) static backslashResult
exec_command_else(PsqlScanState scan_state, ConditionalStack cstack,
      PQExpBuffer query_buf)
{
 bool success = 1;

 switch (conditional_stack_peek(cstack))
 {
  case 128:






   save_query_text_state(scan_state, cstack, query_buf);


   conditional_stack_poke(cstack, 133);
   break;
  case 131:




   discard_query_text(scan_state, cstack, query_buf);





   conditional_stack_poke(cstack, 132);
   break;
  case 130:




   discard_query_text(scan_state, cstack, query_buf);






   conditional_stack_poke(cstack, 133);
   break;
  case 132:
  case 133:
   pg_log_error("\\else: cannot occur after \\else");
   success = 0;
   break;
  case 129:

   pg_log_error("\\else: no matching \\if");
   success = 0;
   break;
 }

 return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}
