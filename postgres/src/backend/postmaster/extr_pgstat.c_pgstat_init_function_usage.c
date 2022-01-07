
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int hash_ctl ;
struct TYPE_17__ {TYPE_1__* flinfo; } ;
struct TYPE_16__ {int keysize; int entrysize; } ;
struct TYPE_12__ {int f_total_time; } ;
struct TYPE_15__ {TYPE_11__ f_counts; } ;
struct TYPE_14__ {int f_start; int save_total; int save_f_total_time; TYPE_11__* fs; } ;
struct TYPE_13__ {scalar_t__ fn_stats; int fn_oid; } ;
typedef int PgStat_FunctionCounts ;
typedef TYPE_2__ PgStat_FunctionCallUsage ;
typedef TYPE_3__ PgStat_BackendFunctionEntry ;
typedef int Oid ;
typedef TYPE_4__ HASHCTL ;
typedef TYPE_5__* FunctionCallInfo ;


 int HASH_BLOBS ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int MemSet (TYPE_11__*,int ,int) ;
 int PGSTAT_FUNCTION_HASH_SIZE ;
 scalar_t__ hash_create (char*,int ,TYPE_4__*,int) ;
 TYPE_3__* hash_search (scalar_t__,int *,int ,int*) ;
 int memset (TYPE_4__*,int ,int) ;
 scalar_t__ pgStatFunctions ;
 scalar_t__ pgstat_track_functions ;
 int total_func_time ;

void
pgstat_init_function_usage(FunctionCallInfo fcinfo,
         PgStat_FunctionCallUsage *fcu)
{
 PgStat_BackendFunctionEntry *htabent;
 bool found;

 if (pgstat_track_functions <= fcinfo->flinfo->fn_stats)
 {

  fcu->fs = ((void*)0);
  return;
 }

 if (!pgStatFunctions)
 {

  HASHCTL hash_ctl;

  memset(&hash_ctl, 0, sizeof(hash_ctl));
  hash_ctl.keysize = sizeof(Oid);
  hash_ctl.entrysize = sizeof(PgStat_BackendFunctionEntry);
  pgStatFunctions = hash_create("Function stat entries",
           PGSTAT_FUNCTION_HASH_SIZE,
           &hash_ctl,
           HASH_ELEM | HASH_BLOBS);
 }


 htabent = hash_search(pgStatFunctions, &fcinfo->flinfo->fn_oid,
        HASH_ENTER, &found);
 if (!found)
  MemSet(&htabent->f_counts, 0, sizeof(PgStat_FunctionCounts));

 fcu->fs = &htabent->f_counts;


 fcu->save_f_total_time = htabent->f_counts.f_total_time;


 fcu->save_total = total_func_time;


 INSTR_TIME_SET_CURRENT(fcu->f_start);
}
