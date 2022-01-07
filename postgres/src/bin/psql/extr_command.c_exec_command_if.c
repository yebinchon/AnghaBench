
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int backslashResult ;
typedef int PsqlScanState ;
typedef int PQExpBuffer ;
typedef int ConditionalStack ;


 int IFSTATE_FALSE ;
 int IFSTATE_IGNORED ;
 int IFSTATE_TRUE ;
 int PSQL_CMD_SKIP_LINE ;
 scalar_t__ conditional_active (int ) ;
 int conditional_stack_poke (int ,int ) ;
 int conditional_stack_push (int ,int ) ;
 int ignore_boolean_expression (int ) ;
 int is_true_boolean_expression (int ,char*) ;
 int save_query_text_state (int ,int ,int ) ;

__attribute__((used)) static backslashResult
exec_command_if(PsqlScanState scan_state, ConditionalStack cstack,
    PQExpBuffer query_buf)
{
 if (conditional_active(cstack))
 {






  conditional_stack_push(cstack, IFSTATE_TRUE);


  save_query_text_state(scan_state, cstack, query_buf);




  if (!is_true_boolean_expression(scan_state, "\\if expression"))
   conditional_stack_poke(cstack, IFSTATE_FALSE);
 }
 else
 {





  conditional_stack_push(cstack, IFSTATE_IGNORED);


  save_query_text_state(scan_state, cstack, query_buf);

  ignore_boolean_expression(scan_state);
 }

 return PSQL_CMD_SKIP_LINE;
}
