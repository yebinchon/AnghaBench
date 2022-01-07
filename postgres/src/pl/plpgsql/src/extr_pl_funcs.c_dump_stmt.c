
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lineno; int cmd_type; } ;
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
 int dump_assert (int *) ;
 int dump_assign (int *) ;
 int dump_block (int *) ;
 int dump_call (int *) ;
 int dump_case (int *) ;
 int dump_close (int *) ;
 int dump_commit (int *) ;
 int dump_dynexecute (int *) ;
 int dump_dynfors (int *) ;
 int dump_execsql (int *) ;
 int dump_exit (int *) ;
 int dump_fetch (int *) ;
 int dump_forc (int *) ;
 int dump_foreach_a (int *) ;
 int dump_fori (int *) ;
 int dump_fors (int *) ;
 int dump_getdiag (int *) ;
 int dump_if (int *) ;
 int dump_loop (int *) ;
 int dump_open (int *) ;
 int dump_perform (int *) ;
 int dump_raise (int *) ;
 int dump_return (int *) ;
 int dump_return_next (int *) ;
 int dump_return_query (int *) ;
 int dump_rollback (int *) ;
 int dump_set (int *) ;
 int dump_while (int *) ;
 int elog (int ,char*,int) ;
 int printf (char*,int) ;

__attribute__((used)) static void
dump_stmt(PLpgSQL_stmt *stmt)
{
 printf("%3d:", stmt->lineno);
 switch (stmt->cmd_type)
 {
  case 153:
   dump_block((PLpgSQL_stmt_block *) stmt);
   break;
  case 154:
   dump_assign((PLpgSQL_stmt_assign *) stmt);
   break;
  case 138:
   dump_if((PLpgSQL_stmt_if *) stmt);
   break;
  case 151:
   dump_case((PLpgSQL_stmt_case *) stmt);
   break;
  case 137:
   dump_loop((PLpgSQL_stmt_loop *) stmt);
   break;
  case 128:
   dump_while((PLpgSQL_stmt_while *) stmt);
   break;
  case 141:
   dump_fori((PLpgSQL_stmt_fori *) stmt);
   break;
  case 140:
   dump_fors((PLpgSQL_stmt_fors *) stmt);
   break;
  case 143:
   dump_forc((PLpgSQL_stmt_forc *) stmt);
   break;
  case 142:
   dump_foreach_a((PLpgSQL_stmt_foreach_a *) stmt);
   break;
  case 145:
   dump_exit((PLpgSQL_stmt_exit *) stmt);
   break;
  case 133:
   dump_return((PLpgSQL_stmt_return *) stmt);
   break;
  case 132:
   dump_return_next((PLpgSQL_stmt_return_next *) stmt);
   break;
  case 131:
   dump_return_query((PLpgSQL_stmt_return_query *) stmt);
   break;
  case 134:
   dump_raise((PLpgSQL_stmt_raise *) stmt);
   break;
  case 155:
   dump_assert((PLpgSQL_stmt_assert *) stmt);
   break;
  case 146:
   dump_execsql((PLpgSQL_stmt_execsql *) stmt);
   break;
  case 148:
   dump_dynexecute((PLpgSQL_stmt_dynexecute *) stmt);
   break;
  case 147:
   dump_dynfors((PLpgSQL_stmt_dynfors *) stmt);
   break;
  case 139:
   dump_getdiag((PLpgSQL_stmt_getdiag *) stmt);
   break;
  case 136:
   dump_open((PLpgSQL_stmt_open *) stmt);
   break;
  case 144:
   dump_fetch((PLpgSQL_stmt_fetch *) stmt);
   break;
  case 150:
   dump_close((PLpgSQL_stmt_close *) stmt);
   break;
  case 135:
   dump_perform((PLpgSQL_stmt_perform *) stmt);
   break;
  case 152:
   dump_call((PLpgSQL_stmt_call *) stmt);
   break;
  case 149:
   dump_commit((PLpgSQL_stmt_commit *) stmt);
   break;
  case 130:
   dump_rollback((PLpgSQL_stmt_rollback *) stmt);
   break;
  case 129:
   dump_set((PLpgSQL_stmt_set *) stmt);
   break;
  default:
   elog(ERROR, "unrecognized cmd_type: %d", stmt->cmd_type);
   break;
 }
}
