
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdo_sqlite_db_handle ;
struct TYPE_3__ {scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_dbh_t ;


 int pdo_sqlite_cleanup_callbacks (int *) ;

__attribute__((used)) static void pdo_sqlite_request_shutdown(pdo_dbh_t *dbh)
{
 pdo_sqlite_db_handle *H = (pdo_sqlite_db_handle *)dbh->driver_data;


 if (H) {
  pdo_sqlite_cleanup_callbacks(H);
 }
}
