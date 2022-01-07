
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


 int FAILURE ;
 int PDO_DBG_ENTER (char*) ;
 int PDO_DBG_INF_FMT (char*,TYPE_2__*) ;
 int PDO_DBG_RETURN (int ) ;
 int SUCCESS ;
 scalar_t__ mysql_ping (int ) ;

__attribute__((used)) static int pdo_mysql_check_liveness(pdo_dbh_t *dbh)
{
 pdo_mysql_db_handle *H = (pdo_mysql_db_handle *)dbh->driver_data;

 PDO_DBG_ENTER("pdo_mysql_check_liveness");
 PDO_DBG_INF_FMT("dbh=%p", dbh);

 if (mysql_ping(H->server)) {
  PDO_DBG_RETURN(FAILURE);
 }
 PDO_DBG_RETURN(SUCCESS);
}
