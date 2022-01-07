
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ timestamp_format; scalar_t__ time_format; scalar_t__ date_format; int db; int isc_status; int tr; } ;
typedef TYPE_1__ pdo_firebird_db_handle ;
struct TYPE_7__ {int is_persistent; scalar_t__ auto_commit; scalar_t__ in_txn; scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;


 int RECORD_ERROR (TYPE_2__*) ;
 int efree (scalar_t__) ;
 scalar_t__ isc_commit_transaction (int ,int *) ;
 scalar_t__ isc_detach_database (int ,int *) ;
 scalar_t__ isc_rollback_transaction (int ,int *) ;
 int pefree (TYPE_1__*,int ) ;

__attribute__((used)) static int firebird_handle_closer(pdo_dbh_t *dbh)
{
 pdo_firebird_db_handle *H = (pdo_firebird_db_handle *)dbh->driver_data;

 if (dbh->in_txn) {
  if (dbh->auto_commit) {
   if (isc_commit_transaction(H->isc_status, &H->tr)) {
    RECORD_ERROR(dbh);
   }
  } else {
   if (isc_rollback_transaction(H->isc_status, &H->tr)) {
    RECORD_ERROR(dbh);
   }
  }
 }

 if (isc_detach_database(H->isc_status, &H->db)) {
  RECORD_ERROR(dbh);
 }

 if (H->date_format) {
  efree(H->date_format);
 }
 if (H->time_format) {
  efree(H->time_format);
 }
 if (H->timestamp_format) {
  efree(H->timestamp_format);
 }

 pefree(H, dbh->is_persistent);

 return 0;
}
