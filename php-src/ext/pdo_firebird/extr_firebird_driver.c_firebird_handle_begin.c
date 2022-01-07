
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int db; int tr; int isc_status; } ;
typedef TYPE_1__ pdo_firebird_db_handle ;
struct TYPE_6__ {int transaction_flags; scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;


 int PDO_TRANS_ABORT ;
 int PDO_TRANS_ACCESS_MODE ;
 int PDO_TRANS_CONFLICT_RESOLUTION ;
 int PDO_TRANS_ISOLATION_LEVEL ;
 int PDO_TRANS_READONLY ;
 int PDO_TRANS_READWRITE ;
 int PDO_TRANS_READ_COMMITTED ;
 int PDO_TRANS_READ_UNCOMMITTED ;
 int PDO_TRANS_REPEATABLE_READ ;
 int PDO_TRANS_RETRY ;
 int PDO_TRANS_SERIALIZABLE ;
 int RECORD_ERROR (TYPE_2__*) ;
 scalar_t__ isc_start_transaction (int ,int *,int,int *,unsigned short,char*) ;
 int isc_tpb_concurrency ;
 int isc_tpb_consistency ;
 int isc_tpb_no_rec_version ;
 int isc_tpb_nowait ;
 int isc_tpb_read ;
 void* isc_tpb_read_committed ;
 int isc_tpb_rec_version ;
 char isc_tpb_version3 ;
 int isc_tpb_wait ;
 int isc_tpb_write ;

__attribute__((used)) static int firebird_handle_begin(pdo_dbh_t *dbh)
{
 pdo_firebird_db_handle *H = (pdo_firebird_db_handle *)dbh->driver_data;
 char tpb[8] = { isc_tpb_version3 }, *ptpb = tpb+1;
 if (isc_start_transaction(H->isc_status, &H->tr, 1, &H->db, (unsigned short)(ptpb-tpb), tpb)) {
  RECORD_ERROR(dbh);
  return 0;
 }
 return 1;
}
