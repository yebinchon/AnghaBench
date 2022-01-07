
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ zend_long ;
struct TYPE_6__ {char* active_query_string; scalar_t__ supports_placeholders; int column_count; scalar_t__ row_count; int executed; scalar_t__ bound_params; scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_7__ {int is_prepared; char* stmt_name; int * result; int * cols; int param_formats; int param_lengths; scalar_t__ param_values; int param_types; int query; scalar_t__ cursor_name; scalar_t__ current_row; TYPE_3__* H; } ;
typedef TYPE_2__ pdo_pgsql_stmt ;
struct TYPE_8__ {int pgoid; int server; } ;
typedef TYPE_3__ pdo_pgsql_db_handle ;
typedef int pdo_pgsql_column ;
typedef int buf ;
typedef int PGresult ;
typedef int ExecStatusType ;


 scalar_t__ PDO_PLACEHOLDER_NAMED ;


 int PQclear (int *) ;
 int PQcmdTuples (int *) ;
 int * PQexec (int ,char*) ;
 int * PQexecParams (int ,int ,int ,int ,char const**,int ,int ,int ) ;
 int * PQexecPrepared (int ,char*,int ,char const**,int ,int ,int ) ;
 scalar_t__ PQnfields (int *) ;
 scalar_t__ PQntuples (int *) ;
 int PQoidValue (int *) ;
 int * PQprepare (int ,char*,int ,int ,int ) ;
 int PQresultStatus (int *) ;
 int ZEND_ATOL (scalar_t__,int ) ;
 int * ecalloc (int,int) ;
 int efree (char*) ;
 int pdo_pgsql_error_stmt (TYPE_1__*,int,char*) ;
 char* pdo_pgsql_sqlstate (int *) ;
 int snprintf (char*,int,char*,char*) ;
 int spprintf (char**,int ,char*,scalar_t__,...) ;
 int strcmp (char*,char*) ;
 int zend_hash_num_elements (scalar_t__) ;

__attribute__((used)) static int pgsql_stmt_execute(pdo_stmt_t *stmt)
{
 pdo_pgsql_stmt *S = (pdo_pgsql_stmt*)stmt->driver_data;
 pdo_pgsql_db_handle *H = S->H;
 ExecStatusType status;


 if(S->result) {
  PQclear(S->result);
  S->result = ((void*)0);
 }

 S->current_row = 0;

 if (S->cursor_name) {
  char *q = ((void*)0);

  if (S->is_prepared) {
   spprintf(&q, 0, "CLOSE %s", S->cursor_name);
   PQclear(PQexec(H->server, q));
   efree(q);
  }

  spprintf(&q, 0, "DECLARE %s SCROLL CURSOR WITH HOLD FOR %s", S->cursor_name, stmt->active_query_string);
  S->result = PQexec(H->server, q);
  efree(q);


  status = PQresultStatus(S->result);
  if (status != 129 && status != 128) {
   pdo_pgsql_error_stmt(stmt, status, pdo_pgsql_sqlstate(S->result));
   return 0;
  }
  PQclear(S->result);


  S->is_prepared = 1;


  spprintf(&q, 0, "FETCH FORWARD 0 FROM %s", S->cursor_name);
  S->result = PQexec(H->server, q);
  efree(q);
 } else if (S->stmt_name) {


  if (!S->is_prepared) {
stmt_retry:


   S->result = PQprepare(H->server, S->stmt_name, S->query,
      stmt->bound_params ? zend_hash_num_elements(stmt->bound_params) : 0,
      S->param_types);
   status = PQresultStatus(S->result);
   switch (status) {
    case 129:
    case 128:

     S->is_prepared = 1;
     PQclear(S->result);
     break;
    default: {
     char *sqlstate = pdo_pgsql_sqlstate(S->result);






     if (sqlstate && !strcmp(sqlstate, "42P05")) {
      char buf[100];
      PGresult *res;
      snprintf(buf, sizeof(buf), "DEALLOCATE %s", S->stmt_name);
      res = PQexec(H->server, buf);
      if (res) {
       PQclear(res);
      }
      goto stmt_retry;
     } else {
      pdo_pgsql_error_stmt(stmt, status, sqlstate);
      return 0;
     }
    }
   }
  }
  S->result = PQexecPrepared(H->server, S->stmt_name,
    stmt->bound_params ?
     zend_hash_num_elements(stmt->bound_params) :
     0,
    (const char**)S->param_values,
    S->param_lengths,
    S->param_formats,
    0);
 } else if (stmt->supports_placeholders == PDO_PLACEHOLDER_NAMED) {

  S->result = PQexecParams(H->server, S->query,
    stmt->bound_params ? zend_hash_num_elements(stmt->bound_params) : 0,
    S->param_types,
    (const char**)S->param_values,
    S->param_lengths,
    S->param_formats,
    0);
 } else {

  S->result = PQexec(H->server, stmt->active_query_string);
 }
 status = PQresultStatus(S->result);

 if (status != 129 && status != 128) {
  pdo_pgsql_error_stmt(stmt, status, pdo_pgsql_sqlstate(S->result));
  return 0;
 }

 if (!stmt->executed && (!stmt->column_count || S->cols == ((void*)0))) {
  stmt->column_count = (int) PQnfields(S->result);
  S->cols = ecalloc(stmt->column_count, sizeof(pdo_pgsql_column));
 }

 if (status == 129) {
  ZEND_ATOL(stmt->row_count, PQcmdTuples(S->result));
  H->pgoid = PQoidValue(S->result);
 } else {
  stmt->row_count = (zend_long)PQntuples(S->result);
 }

 return 1;
}
