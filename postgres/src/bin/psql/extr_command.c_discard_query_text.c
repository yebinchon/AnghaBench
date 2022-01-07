
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; char* data; } ;
typedef int PsqlScanState ;
typedef TYPE_1__* PQExpBuffer ;
typedef int ConditionalStack ;


 int Assert (int) ;
 int conditional_stack_get_paren_depth (int ) ;
 int conditional_stack_get_query_len (int ) ;
 int psql_scan_set_paren_depth (int ,int ) ;

__attribute__((used)) static void
discard_query_text(PsqlScanState scan_state, ConditionalStack cstack,
       PQExpBuffer query_buf)
{
 if (query_buf)
 {
  int new_len = conditional_stack_get_query_len(cstack);

  Assert(new_len >= 0 && new_len <= query_buf->len);
  query_buf->len = new_len;
  query_buf->data[new_len] = '\0';
 }
 psql_scan_set_paren_depth(scan_state,
         conditional_stack_get_paren_depth(cstack));
}
