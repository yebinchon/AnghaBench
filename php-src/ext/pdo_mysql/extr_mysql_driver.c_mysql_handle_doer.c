
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_long ;
struct TYPE_6__ {scalar_t__ errcode; } ;
struct TYPE_7__ {int server; TYPE_1__ einfo; } ;
typedef TYPE_2__ pdo_mysql_db_handle ;
struct TYPE_8__ {scalar_t__ driver_data; } ;
typedef TYPE_3__ pdo_dbh_t ;
typedef scalar_t__ my_ulonglong ;
typedef int MYSQL_RES ;


 int PDO_DBG_ENTER (char*) ;
 int PDO_DBG_INF_FMT (char*,...) ;
 int PDO_DBG_RETURN (int) ;
 scalar_t__ mysql_affected_rows (int ) ;
 int mysql_free_result (int *) ;
 scalar_t__ mysql_more_results (int ) ;
 scalar_t__ mysql_next_result (int ) ;
 scalar_t__ mysql_real_query (int ,char const*,size_t) ;
 int * mysql_store_result (int ) ;
 int pdo_mysql_error (TYPE_3__*) ;

__attribute__((used)) static zend_long mysql_handle_doer(pdo_dbh_t *dbh, const char *sql, size_t sql_len)
{
 pdo_mysql_db_handle *H = (pdo_mysql_db_handle *)dbh->driver_data;
 PDO_DBG_ENTER("mysql_handle_doer");
 PDO_DBG_INF_FMT("dbh=%p", dbh);
 PDO_DBG_INF_FMT("sql=%.*s", (int)sql_len, sql);

 if (mysql_real_query(H->server, sql, sql_len)) {
  pdo_mysql_error(dbh);
  PDO_DBG_RETURN(-1);
 } else {
  my_ulonglong c = mysql_affected_rows(H->server);
  if (c == (my_ulonglong) -1) {
   pdo_mysql_error(dbh);
   PDO_DBG_RETURN(H->einfo.errcode ? -1 : 0);
  } else {


   MYSQL_RES* result;
   while (mysql_more_results(H->server)) {
    if (mysql_next_result(H->server)) {
     PDO_DBG_RETURN(1);
    }
    result = mysql_store_result(H->server);
    if (result) {
     mysql_free_result(result);
    }
   }
   PDO_DBG_RETURN((int)c);
  }
 }
}
