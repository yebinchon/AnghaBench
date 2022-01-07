
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int deleted_pre_trunc; int tuples_deleted; int updated_pre_trunc; int tuples_updated; int inserted_pre_trunc; int tuples_inserted; scalar_t__ truncated; } ;
typedef TYPE_1__ PgStat_TableXactStatus ;



__attribute__((used)) static void
pgstat_truncate_restore_counters(PgStat_TableXactStatus *trans)
{
 if (trans->truncated)
 {
  trans->tuples_inserted = trans->inserted_pre_trunc;
  trans->tuples_updated = trans->updated_pre_trunc;
  trans->tuples_deleted = trans->deleted_pre_trunc;
 }
}
