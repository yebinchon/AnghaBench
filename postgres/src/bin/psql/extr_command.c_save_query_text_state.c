
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; } ;
typedef int PsqlScanState ;
typedef TYPE_1__* PQExpBuffer ;
typedef int ConditionalStack ;


 int conditional_stack_set_paren_depth (int ,int ) ;
 int conditional_stack_set_query_len (int ,int ) ;
 int psql_scan_get_paren_depth (int ) ;

__attribute__((used)) static void
save_query_text_state(PsqlScanState scan_state, ConditionalStack cstack,
       PQExpBuffer query_buf)
{
 if (query_buf)
  conditional_stack_set_query_len(cstack, query_buf->len);
 conditional_stack_set_paren_depth(cstack,
           psql_scan_get_paren_depth(scan_state));
}
