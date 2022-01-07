
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_6__ {scalar_t__ tuples_updated; scalar_t__ tuples_inserted; scalar_t__ tuples_deleted; scalar_t__ deleted_pre_trunc; scalar_t__ updated_pre_trunc; scalar_t__ inserted_pre_trunc; scalar_t__ t_truncated; int t_shared; int t_id; } ;
typedef TYPE_2__ TwoPhasePgStatRecord ;
typedef int TransactionId ;
struct TYPE_5__ {int t_delta_dead_tuples; int t_tuples_deleted; int t_tuples_updated; int t_tuples_inserted; } ;
struct TYPE_7__ {TYPE_1__ t_counts; } ;
typedef TYPE_3__ PgStat_TableStatus ;


 TYPE_3__* get_tabstat_entry (int ,int ) ;

void
pgstat_twophase_postabort(TransactionId xid, uint16 info,
        void *recdata, uint32 len)
{
 TwoPhasePgStatRecord *rec = (TwoPhasePgStatRecord *) recdata;
 PgStat_TableStatus *pgstat_info;


 pgstat_info = get_tabstat_entry(rec->t_id, rec->t_shared);


 if (rec->t_truncated)
 {
  rec->tuples_inserted = rec->inserted_pre_trunc;
  rec->tuples_updated = rec->updated_pre_trunc;
  rec->tuples_deleted = rec->deleted_pre_trunc;
 }
 pgstat_info->t_counts.t_tuples_inserted += rec->tuples_inserted;
 pgstat_info->t_counts.t_tuples_updated += rec->tuples_updated;
 pgstat_info->t_counts.t_tuples_deleted += rec->tuples_deleted;
 pgstat_info->t_counts.t_delta_dead_tuples +=
  rec->tuples_inserted + rec->tuples_updated;
}
