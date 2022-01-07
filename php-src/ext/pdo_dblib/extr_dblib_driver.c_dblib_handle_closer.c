
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * login; int * link; int err; } ;
typedef TYPE_1__ pdo_dblib_db_handle ;
struct TYPE_6__ {int * driver_data; int is_persistent; } ;
typedef TYPE_2__ pdo_dbh_t ;


 int dbclose (int *) ;
 int dbfreelogin (int *) ;
 int pdo_dblib_err_dtor (int *) ;
 int pefree (TYPE_1__*,int ) ;

__attribute__((used)) static int dblib_handle_closer(pdo_dbh_t *dbh)
{
 pdo_dblib_db_handle *H = (pdo_dblib_db_handle *)dbh->driver_data;

 if (H) {
  pdo_dblib_err_dtor(&H->err);
  if (H->link) {
   dbclose(H->link);
   H->link = ((void*)0);
  }
  if (H->login) {
   dbfreelogin(H->login);
   H->login = ((void*)0);
  }
  pefree(H, dbh->is_persistent);
  dbh->driver_data = ((void*)0);
 }
 return 0;
}
