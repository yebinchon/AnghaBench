
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * env; int * dbc; } ;
typedef TYPE_1__ pdo_odbc_db_handle ;
struct TYPE_6__ {int * driver_data; int is_persistent; } ;
typedef TYPE_2__ pdo_dbh_t ;


 int SQLDisconnect (int *) ;
 int SQLEndTran (int ,int *,int ) ;
 int SQLFreeHandle (int ,int *) ;
 int SQL_HANDLE_DBC ;
 int SQL_HANDLE_ENV ;
 int * SQL_NULL_HANDLE ;
 int SQL_ROLLBACK ;
 int pefree (TYPE_1__*,int ) ;

__attribute__((used)) static int odbc_handle_closer(pdo_dbh_t *dbh)
{
 pdo_odbc_db_handle *H = (pdo_odbc_db_handle*)dbh->driver_data;

 if (H->dbc != SQL_NULL_HANDLE) {
  SQLEndTran(SQL_HANDLE_DBC, H->dbc, SQL_ROLLBACK);
  SQLDisconnect(H->dbc);
  SQLFreeHandle(SQL_HANDLE_DBC, H->dbc);
  H->dbc = ((void*)0);
 }
 SQLFreeHandle(SQL_HANDLE_ENV, H->env);
 H->env = ((void*)0);
 pefree(H, dbh->is_persistent);
 dbh->driver_data = ((void*)0);

 return 0;
}
