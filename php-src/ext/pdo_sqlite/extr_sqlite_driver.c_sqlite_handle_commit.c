
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int db; } ;
typedef TYPE_1__ pdo_sqlite_db_handle ;
struct TYPE_6__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;


 scalar_t__ SQLITE_OK ;
 int pdo_sqlite_error (TYPE_2__*) ;
 scalar_t__ sqlite3_exec (int ,char*,int *,int *,char**) ;
 int sqlite3_free (char*) ;

__attribute__((used)) static int sqlite_handle_commit(pdo_dbh_t *dbh)
{
 pdo_sqlite_db_handle *H = (pdo_sqlite_db_handle *)dbh->driver_data;
 char *errmsg = ((void*)0);

 if (sqlite3_exec(H->db, "COMMIT", ((void*)0), ((void*)0), &errmsg) != SQLITE_OK) {
  pdo_sqlite_error(dbh);
  if (errmsg)
   sqlite3_free(errmsg);
  return 0;
 }
 return 1;
}
