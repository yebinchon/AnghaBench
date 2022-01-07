
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int link; } ;
typedef TYPE_1__ pdo_dblib_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;


 scalar_t__ FAIL ;
 scalar_t__ dbcmd (int ,char const*) ;
 scalar_t__ dbsqlexec (int ) ;

__attribute__((used)) static int pdo_dblib_transaction_cmd(const char *cmd, pdo_dbh_t *dbh)
{
 pdo_dblib_db_handle *H = (pdo_dblib_db_handle *)dbh->driver_data;

 if (FAIL == dbcmd(H->link, cmd)) {
  return 0;
 }

 if (FAIL == dbsqlexec(H->link)) {
  return 0;
 }

 return 1;
}
