
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int server; } ;
typedef TYPE_1__ pdo_pgsql_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;


 scalar_t__ PQTRANS_IDLE ;
 scalar_t__ PQtransactionStatus (int ) ;

__attribute__((used)) static int pgsql_handle_in_transaction(pdo_dbh_t *dbh)
{
 pdo_pgsql_db_handle *H;

 H = (pdo_pgsql_db_handle *)dbh->driver_data;

 return PQtransactionStatus(H->server) > PQTRANS_IDLE;
}
