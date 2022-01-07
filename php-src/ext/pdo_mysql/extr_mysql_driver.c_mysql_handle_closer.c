
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* errmsg; } ;
struct TYPE_8__ {TYPE_1__ einfo; scalar_t__ server; } ;
typedef TYPE_2__ pdo_mysql_db_handle ;
struct TYPE_9__ {int * driver_data; int is_persistent; } ;
typedef TYPE_3__ pdo_dbh_t ;


 int PDO_DBG_ENTER (char*) ;
 int PDO_DBG_INF_FMT (char*,TYPE_3__*) ;
 int PDO_DBG_RETURN (int ) ;
 int mysql_close (scalar_t__) ;
 int pefree (TYPE_2__*,int ) ;

__attribute__((used)) static int mysql_handle_closer(pdo_dbh_t *dbh)
{
 pdo_mysql_db_handle *H = (pdo_mysql_db_handle *)dbh->driver_data;

 PDO_DBG_ENTER("mysql_handle_closer");
 PDO_DBG_INF_FMT("dbh=%p", dbh);
 if (H) {
  if (H->server) {
   mysql_close(H->server);
  }
  if (H->einfo.errmsg) {
   pefree(H->einfo.errmsg, dbh->is_persistent);
  }
  pefree(H, dbh->is_persistent);
  dbh->driver_data = ((void*)0);
 }
 PDO_DBG_RETURN(0);
}
