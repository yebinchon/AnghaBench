
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_7__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_1__ ;


struct TYPE_40__ {int (* stmt_end ) (TYPE_2__*,TYPE_1__*) ;int (* stmt_beg ) (TYPE_2__*,TYPE_1__*) ;} ;
struct TYPE_39__ {TYPE_1__* err_stmt; } ;
struct TYPE_38__ {int cmd_type; } ;
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
typedef TYPE_2__ PLpgSQL_execstate ;


 int CHECK_FOR_INTERRUPTS () ;
 int ERROR ;
 int elog (int ,char*,int) ;
 int exec_stmt_assert (TYPE_2__*,int *) ;
 int exec_stmt_assign (TYPE_2__*,int *) ;
 int exec_stmt_block (TYPE_2__*,int *) ;
 int exec_stmt_call (TYPE_2__*,int *) ;
 int exec_stmt_case (TYPE_2__*,int *) ;
 int exec_stmt_close (TYPE_2__*,int *) ;
 int exec_stmt_commit (TYPE_2__*,int *) ;
 int exec_stmt_dynexecute (TYPE_2__*,int *) ;
 int exec_stmt_dynfors (TYPE_2__*,int *) ;
 int exec_stmt_execsql (TYPE_2__*,int *) ;
 int exec_stmt_exit (TYPE_2__*,int *) ;
 int exec_stmt_fetch (TYPE_2__*,int *) ;
 int exec_stmt_forc (TYPE_2__*,int *) ;
 int exec_stmt_foreach_a (TYPE_2__*,int *) ;
 int exec_stmt_fori (TYPE_2__*,int *) ;
 int exec_stmt_fors (TYPE_2__*,int *) ;
 int exec_stmt_getdiag (TYPE_2__*,int *) ;
 int exec_stmt_if (TYPE_2__*,int *) ;
 int exec_stmt_loop (TYPE_2__*,int *) ;
 int exec_stmt_open (TYPE_2__*,int *) ;
 int exec_stmt_perform (TYPE_2__*,int *) ;
 int exec_stmt_raise (TYPE_2__*,int *) ;
 int exec_stmt_return (TYPE_2__*,int *) ;
 int exec_stmt_return_next (TYPE_2__*,int *) ;
 int exec_stmt_return_query (TYPE_2__*,int *) ;
 int exec_stmt_rollback (TYPE_2__*,int *) ;
 int exec_stmt_set (TYPE_2__*,int *) ;
 int exec_stmt_while (TYPE_2__*,int *) ;
 TYPE_7__** plpgsql_plugin_ptr ;
 int stub1 (TYPE_2__*,TYPE_1__*) ;
 int stub2 (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static int
exec_stmt(PLpgSQL_execstate *estate, PLpgSQL_stmt *stmt)
{
 PLpgSQL_stmt *save_estmt;
 int rc = -1;

 save_estmt = estate->err_stmt;
 estate->err_stmt = stmt;


 if (*plpgsql_plugin_ptr && (*plpgsql_plugin_ptr)->stmt_beg)
  ((*plpgsql_plugin_ptr)->stmt_beg) (estate, stmt);

 CHECK_FOR_INTERRUPTS();

 switch (stmt->cmd_type)
 {
  case 153:
   rc = exec_stmt_block(estate, (PLpgSQL_stmt_block *) stmt);
   break;

  case 154:
   rc = exec_stmt_assign(estate, (PLpgSQL_stmt_assign *) stmt);
   break;

  case 135:
   rc = exec_stmt_perform(estate, (PLpgSQL_stmt_perform *) stmt);
   break;

  case 152:
   rc = exec_stmt_call(estate, (PLpgSQL_stmt_call *) stmt);
   break;

  case 139:
   rc = exec_stmt_getdiag(estate, (PLpgSQL_stmt_getdiag *) stmt);
   break;

  case 138:
   rc = exec_stmt_if(estate, (PLpgSQL_stmt_if *) stmt);
   break;

  case 151:
   rc = exec_stmt_case(estate, (PLpgSQL_stmt_case *) stmt);
   break;

  case 137:
   rc = exec_stmt_loop(estate, (PLpgSQL_stmt_loop *) stmt);
   break;

  case 128:
   rc = exec_stmt_while(estate, (PLpgSQL_stmt_while *) stmt);
   break;

  case 141:
   rc = exec_stmt_fori(estate, (PLpgSQL_stmt_fori *) stmt);
   break;

  case 140:
   rc = exec_stmt_fors(estate, (PLpgSQL_stmt_fors *) stmt);
   break;

  case 143:
   rc = exec_stmt_forc(estate, (PLpgSQL_stmt_forc *) stmt);
   break;

  case 142:
   rc = exec_stmt_foreach_a(estate, (PLpgSQL_stmt_foreach_a *) stmt);
   break;

  case 145:
   rc = exec_stmt_exit(estate, (PLpgSQL_stmt_exit *) stmt);
   break;

  case 133:
   rc = exec_stmt_return(estate, (PLpgSQL_stmt_return *) stmt);
   break;

  case 132:
   rc = exec_stmt_return_next(estate, (PLpgSQL_stmt_return_next *) stmt);
   break;

  case 131:
   rc = exec_stmt_return_query(estate, (PLpgSQL_stmt_return_query *) stmt);
   break;

  case 134:
   rc = exec_stmt_raise(estate, (PLpgSQL_stmt_raise *) stmt);
   break;

  case 155:
   rc = exec_stmt_assert(estate, (PLpgSQL_stmt_assert *) stmt);
   break;

  case 146:
   rc = exec_stmt_execsql(estate, (PLpgSQL_stmt_execsql *) stmt);
   break;

  case 148:
   rc = exec_stmt_dynexecute(estate, (PLpgSQL_stmt_dynexecute *) stmt);
   break;

  case 147:
   rc = exec_stmt_dynfors(estate, (PLpgSQL_stmt_dynfors *) stmt);
   break;

  case 136:
   rc = exec_stmt_open(estate, (PLpgSQL_stmt_open *) stmt);
   break;

  case 144:
   rc = exec_stmt_fetch(estate, (PLpgSQL_stmt_fetch *) stmt);
   break;

  case 150:
   rc = exec_stmt_close(estate, (PLpgSQL_stmt_close *) stmt);
   break;

  case 149:
   rc = exec_stmt_commit(estate, (PLpgSQL_stmt_commit *) stmt);
   break;

  case 130:
   rc = exec_stmt_rollback(estate, (PLpgSQL_stmt_rollback *) stmt);
   break;

  case 129:
   rc = exec_stmt_set(estate, (PLpgSQL_stmt_set *) stmt);
   break;

  default:
   estate->err_stmt = save_estmt;
   elog(ERROR, "unrecognized cmd_type: %d", stmt->cmd_type);
 }


 if (*plpgsql_plugin_ptr && (*plpgsql_plugin_ptr)->stmt_end)
  ((*plpgsql_plugin_ptr)->stmt_end) (estate, stmt);

 estate->err_stmt = save_estmt;

 return rc;
}
