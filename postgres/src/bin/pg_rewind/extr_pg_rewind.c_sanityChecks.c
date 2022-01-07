
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ system_identifier; scalar_t__ pg_control_version; scalar_t__ catalog_version_no; scalar_t__ state; } ;
struct TYPE_3__ {scalar_t__ system_identifier; scalar_t__ pg_control_version; scalar_t__ catalog_version_no; scalar_t__ data_checksum_version; scalar_t__ state; int wal_log_hints; } ;


 scalar_t__ CATALOG_VERSION_NO ;
 TYPE_2__ ControlFile_source ;
 TYPE_1__ ControlFile_target ;
 scalar_t__ DB_SHUTDOWNED ;
 scalar_t__ DB_SHUTDOWNED_IN_RECOVERY ;
 scalar_t__ PG_CONTROL_VERSION ;
 scalar_t__ PG_DATA_CHECKSUM_VERSION ;
 scalar_t__ datadir_source ;
 int pg_fatal (char*) ;

__attribute__((used)) static void
sanityChecks(void)
{



 if (ControlFile_target.system_identifier != ControlFile_source.system_identifier)
  pg_fatal("source and target clusters are from different systems");


 if (ControlFile_target.pg_control_version != PG_CONTROL_VERSION ||
  ControlFile_source.pg_control_version != PG_CONTROL_VERSION ||
  ControlFile_target.catalog_version_no != CATALOG_VERSION_NO ||
  ControlFile_source.catalog_version_no != CATALOG_VERSION_NO)
 {
  pg_fatal("clusters are not compatible with this version of pg_rewind");
 }





 if (ControlFile_target.data_checksum_version != PG_DATA_CHECKSUM_VERSION &&
  !ControlFile_target.wal_log_hints)
 {
  pg_fatal("target server needs to use either data checksums or \"wal_log_hints = on\"");
 }







 if (ControlFile_target.state != DB_SHUTDOWNED &&
  ControlFile_target.state != DB_SHUTDOWNED_IN_RECOVERY)
  pg_fatal("target server must be shut down cleanly");






 if (datadir_source &&
  ControlFile_source.state != DB_SHUTDOWNED &&
  ControlFile_source.state != DB_SHUTDOWNED_IN_RECOVERY)
  pg_fatal("source data directory must be shut down cleanly");
}
