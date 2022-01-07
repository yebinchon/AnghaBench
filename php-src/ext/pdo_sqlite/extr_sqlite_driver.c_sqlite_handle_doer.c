
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_long ;
struct TYPE_5__ {int db; } ;
typedef TYPE_1__ pdo_sqlite_db_handle ;
struct TYPE_6__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;


 scalar_t__ SQLITE_OK ;
 int pdo_sqlite_error (TYPE_2__*) ;
 int sqlite3_changes (int ) ;
 scalar_t__ sqlite3_exec (int ,char const*,int *,int *,char**) ;
 int sqlite3_free (char*) ;

__attribute__((used)) static zend_long sqlite_handle_doer(pdo_dbh_t *dbh, const char *sql, size_t sql_len)
{
 pdo_sqlite_db_handle *H = (pdo_sqlite_db_handle *)dbh->driver_data;
 char *errmsg = ((void*)0);

 if (sqlite3_exec(H->db, sql, ((void*)0), ((void*)0), &errmsg) != SQLITE_OK) {
  pdo_sqlite_error(dbh);
  if (errmsg)
   sqlite3_free(errmsg);

  return -1;
 } else {
  return sqlite3_changes(H->db);
 }
}
