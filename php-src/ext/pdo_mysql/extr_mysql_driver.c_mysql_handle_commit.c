
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int server; } ;
typedef TYPE_1__ pdo_mysql_db_handle ;
struct TYPE_6__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;


 int PDO_DBG_ENTER (char*) ;
 int PDO_DBG_INF_FMT (char*,TYPE_2__*) ;
 int PDO_DBG_RETURN (int) ;
 scalar_t__ mysql_commit (int ) ;

__attribute__((used)) static int mysql_handle_commit(pdo_dbh_t *dbh)
{
 PDO_DBG_ENTER("mysql_handle_commit");
 PDO_DBG_INF_FMT("dbh=%p", dbh);
 PDO_DBG_RETURN(0 == mysql_commit(((pdo_mysql_db_handle *)dbh->driver_data)->server));
}
