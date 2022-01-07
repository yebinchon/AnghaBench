
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_stmt_t ;
struct TYPE_7__ {TYPE_1__* H; scalar_t__ stmt; int * result; } ;
typedef TYPE_3__ pdo_mysql_stmt ;
struct TYPE_5__ {int server; } ;
typedef int MYSQL_RES ;


 int PDO_DBG_ENTER (char*) ;
 int PDO_DBG_INF_FMT (char*,scalar_t__) ;
 int PDO_DBG_RETURN (int) ;
 int mysql_free_result (int *) ;
 scalar_t__ mysql_more_results (int ) ;
 scalar_t__ mysql_next_result (int ) ;
 int mysql_stmt_free_result (scalar_t__) ;
 int * mysql_store_result (int ) ;

__attribute__((used)) static int pdo_mysql_stmt_cursor_closer(pdo_stmt_t *stmt)
{
 pdo_mysql_stmt *S = (pdo_mysql_stmt*)stmt->driver_data;

 PDO_DBG_ENTER("pdo_mysql_stmt_cursor_closer");
 PDO_DBG_INF_FMT("stmt=%p", S->stmt);
 if (S->result) {
  mysql_free_result(S->result);
  S->result = ((void*)0);
 }
 if (S->stmt) {
  int retval;
  retval = mysql_stmt_free_result(S->stmt);
  PDO_DBG_RETURN(retval ? 0 : 1);
 }

 while (mysql_more_results(S->H->server)) {
  MYSQL_RES *res;
  if (mysql_next_result(S->H->server) != 0) {
   break;
  }
  res = mysql_store_result(S->H->server);
  if (res) {
   mysql_free_result(res);
  }
 }
 PDO_DBG_RETURN(1);
}
