
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tr; int isc_status; } ;
typedef TYPE_1__ pdo_firebird_db_handle ;
struct TYPE_6__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;


 int RECORD_ERROR (TYPE_2__*) ;
 scalar_t__ isc_rollback_transaction (int ,int *) ;

__attribute__((used)) static int firebird_handle_rollback(pdo_dbh_t *dbh)
{
 pdo_firebird_db_handle *H = (pdo_firebird_db_handle *)dbh->driver_data;

 if (isc_rollback_transaction(H->isc_status, &H->tr)) {
  RECORD_ERROR(dbh);
  return 0;
 }
 return 1;
}
