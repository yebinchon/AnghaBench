
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* errmsg; } ;
struct TYPE_7__ {TYPE_1__ einfo; int * server; } ;
typedef TYPE_2__ pdo_pgsql_db_handle ;
struct TYPE_8__ {int * driver_data; int is_persistent; } ;
typedef TYPE_3__ pdo_dbh_t ;


 int PQfinish (int *) ;
 int pefree (TYPE_2__*,int ) ;

__attribute__((used)) static int pgsql_handle_closer(pdo_dbh_t *dbh)
{
 pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)dbh->driver_data;
 if (H) {
  if (H->server) {
   PQfinish(H->server);
   H->server = ((void*)0);
  }
  if (H->einfo.errmsg) {
   pefree(H->einfo.errmsg, dbh->is_persistent);
   H->einfo.errmsg = ((void*)0);
  }
  pefree(H, dbh->is_persistent);
  dbh->driver_data = ((void*)0);
 }
 return 0;
}
