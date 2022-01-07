
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmd_type; } ;
typedef int PLpgSQL_stmt_while ;
typedef int PLpgSQL_stmt_set ;
typedef int PLpgSQL_stmt_rollback ;
typedef int PLpgSQL_stmt_return_query ;
typedef int PLpgSQL_stmt_return_next ;
typedef int PLpgSQL_stmt_return ;
typedef int PLpgSQL_stmt_raise ;
typedef int PLpgSQL_stmt_perform ;
typedef int PLpgSQL_stmt_open ;
typedef int PLpgSQL_stmt_loop ;
typedef int PLpgSQL_stmt_if ;
typedef int PLpgSQL_stmt_getdiag ;
typedef int PLpgSQL_stmt_fors ;
typedef int PLpgSQL_stmt_fori ;
typedef int PLpgSQL_stmt_foreach_a ;
typedef int PLpgSQL_stmt_forc ;
typedef int PLpgSQL_stmt_fetch ;
typedef int PLpgSQL_stmt_exit ;
typedef int PLpgSQL_stmt_execsql ;
typedef int PLpgSQL_stmt_dynfors ;
typedef int PLpgSQL_stmt_dynexecute ;
typedef int PLpgSQL_stmt_commit ;
typedef int PLpgSQL_stmt_close ;
typedef int PLpgSQL_stmt_case ;
typedef int PLpgSQL_stmt_call ;
typedef int PLpgSQL_stmt_block ;
typedef int PLpgSQL_stmt_assign ;
typedef int PLpgSQL_stmt_assert ;
typedef TYPE_1__ PLpgSQL_stmt ;


 int ERROR ;
 int elog (int ,char*,int) ;
 int free_assert (int *) ;
 int free_assign (int *) ;
 int free_block (int *) ;
 int free_call (int *) ;
 int free_case (int *) ;
 int free_close (int *) ;
 int free_commit (int *) ;
 int free_dynexecute (int *) ;
 int free_dynfors (int *) ;
 int free_execsql (int *) ;
 int free_exit (int *) ;
 int free_fetch (int *) ;
 int free_forc (int *) ;
 int free_foreach_a (int *) ;
 int free_fori (int *) ;
 int free_fors (int *) ;
 int free_getdiag (int *) ;
 int free_if (int *) ;
 int free_loop (int *) ;
 int free_open (int *) ;
 int free_perform (int *) ;
 int free_raise (int *) ;
 int free_return (int *) ;
 int free_return_next (int *) ;
 int free_return_query (int *) ;
 int free_rollback (int *) ;
 int free_set (int *) ;
 int free_while (int *) ;

__attribute__((used)) static void
free_stmt(PLpgSQL_stmt *stmt)
{
 switch (stmt->cmd_type)
 {
  case 153:
   free_block((PLpgSQL_stmt_block *) stmt);
   break;
  case 154:
   free_assign((PLpgSQL_stmt_assign *) stmt);
   break;
  case 138:
   free_if((PLpgSQL_stmt_if *) stmt);
   break;
  case 151:
   free_case((PLpgSQL_stmt_case *) stmt);
   break;
  case 137:
   free_loop((PLpgSQL_stmt_loop *) stmt);
   break;
  case 128:
   free_while((PLpgSQL_stmt_while *) stmt);
   break;
  case 141:
   free_fori((PLpgSQL_stmt_fori *) stmt);
   break;
  case 140:
   free_fors((PLpgSQL_stmt_fors *) stmt);
   break;
  case 143:
   free_forc((PLpgSQL_stmt_forc *) stmt);
   break;
  case 142:
   free_foreach_a((PLpgSQL_stmt_foreach_a *) stmt);
   break;
  case 145:
   free_exit((PLpgSQL_stmt_exit *) stmt);
   break;
  case 133:
   free_return((PLpgSQL_stmt_return *) stmt);
   break;
  case 132:
   free_return_next((PLpgSQL_stmt_return_next *) stmt);
   break;
  case 131:
   free_return_query((PLpgSQL_stmt_return_query *) stmt);
   break;
  case 134:
   free_raise((PLpgSQL_stmt_raise *) stmt);
   break;
  case 155:
   free_assert((PLpgSQL_stmt_assert *) stmt);
   break;
  case 146:
   free_execsql((PLpgSQL_stmt_execsql *) stmt);
   break;
  case 148:
   free_dynexecute((PLpgSQL_stmt_dynexecute *) stmt);
   break;
  case 147:
   free_dynfors((PLpgSQL_stmt_dynfors *) stmt);
   break;
  case 139:
   free_getdiag((PLpgSQL_stmt_getdiag *) stmt);
   break;
  case 136:
   free_open((PLpgSQL_stmt_open *) stmt);
   break;
  case 144:
   free_fetch((PLpgSQL_stmt_fetch *) stmt);
   break;
  case 150:
   free_close((PLpgSQL_stmt_close *) stmt);
   break;
  case 135:
   free_perform((PLpgSQL_stmt_perform *) stmt);
   break;
  case 152:
   free_call((PLpgSQL_stmt_call *) stmt);
   break;
  case 149:
   free_commit((PLpgSQL_stmt_commit *) stmt);
   break;
  case 130:
   free_rollback((PLpgSQL_stmt_rollback *) stmt);
   break;
  case 129:
   free_set((PLpgSQL_stmt_set *) stmt);
   break;
  default:
   elog(ERROR, "unrecognized cmd_type: %d", stmt->cmd_type);
   break;
 }
}
