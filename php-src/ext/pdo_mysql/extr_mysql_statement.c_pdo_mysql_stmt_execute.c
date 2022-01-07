
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int active_query_stringlen; int active_query_string; scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_9__ {int * result; scalar_t__ stmt; TYPE_3__* H; } ;
typedef TYPE_2__ pdo_mysql_stmt ;
struct TYPE_10__ {int server; } ;
typedef TYPE_3__ pdo_mysql_db_handle ;


 int PDO_DBG_ENTER (char*) ;
 int PDO_DBG_INF_FMT (char*,scalar_t__) ;
 int PDO_DBG_RETURN (int ) ;
 int mysql_free_result (int *) ;
 scalar_t__ mysql_real_query (int ,int ,int ) ;
 int pdo_mysql_error_stmt (TYPE_1__*) ;
 int pdo_mysql_fill_stmt_from_result (TYPE_1__*) ;
 int pdo_mysql_stmt_execute_prepared (TYPE_1__*) ;

__attribute__((used)) static int pdo_mysql_stmt_execute(pdo_stmt_t *stmt)
{
 pdo_mysql_stmt *S = (pdo_mysql_stmt*)stmt->driver_data;
 pdo_mysql_db_handle *H = S->H;
 PDO_DBG_ENTER("pdo_mysql_stmt_execute");
 PDO_DBG_INF_FMT("stmt=%p", S->stmt);

 if (S->stmt) {
  PDO_DBG_RETURN(pdo_mysql_stmt_execute_prepared(stmt));
 }


 if (S->result) {
  mysql_free_result(S->result);
  S->result = ((void*)0);
 }

 if (mysql_real_query(H->server, stmt->active_query_string, stmt->active_query_stringlen) != 0) {
  pdo_mysql_error_stmt(stmt);
  PDO_DBG_RETURN(0);
 }

 PDO_DBG_RETURN(pdo_mysql_fill_stmt_from_result(stmt));
}
