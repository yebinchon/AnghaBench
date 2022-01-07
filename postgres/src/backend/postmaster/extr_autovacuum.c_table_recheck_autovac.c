
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {double vacuum_cost_delay; int vacuum_cost_limit; int log_min_duration; int freeze_min_age; int freeze_table_age; int multixact_freeze_min_age; int multixact_freeze_table_age; } ;
struct TYPE_13__ {TYPE_5__ ar_reloptions; scalar_t__ ar_hasrelopts; } ;
typedef TYPE_2__ av_relation ;
struct TYPE_12__ {int options; int freeze_min_age; int freeze_table_age; int multixact_freeze_min_age; int multixact_freeze_table_age; int is_wraparound; int log_min_duration; void* truncate; void* index_cleanup; } ;
struct TYPE_14__ {int at_vacuum_cost_limit; double at_vacuum_cost_delay; int at_dobalance; int * at_datname; int * at_nspname; int * at_relname; TYPE_1__ at_params; int at_sharedrel; int at_relid; } ;
typedef TYPE_3__ autovac_table ;
typedef int TupleDesc ;
struct TYPE_15__ {scalar_t__ relkind; int relisshared; } ;
typedef int PgStat_StatTabEntry ;
typedef int PgStat_StatDBEntry ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int HTAB ;
typedef TYPE_4__* Form_pg_class ;
typedef TYPE_5__ AutoVacOpts ;


 scalar_t__ GETSTRUCT (int ) ;
 int HASH_FIND ;
 int HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int Log_autovacuum_min_duration ;
 int MyDatabaseId ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ RELKIND_TOASTVALUE ;
 int RELOID ;
 int SearchSysCacheCopy1 (int ,int ) ;
 int VACOPT_ANALYZE ;
 int VACOPT_SKIPTOAST ;
 int VACOPT_SKIP_LOCKED ;
 void* VACOPT_TERNARY_DEFAULT ;
 int VACOPT_VACUUM ;
 double VacuumCostDelay ;
 int VacuumCostLimit ;
 int autovac_refresh_stats () ;
 double autovacuum_vac_cost_delay ;
 int autovacuum_vac_cost_limit ;
 int default_freeze_min_age ;
 int default_freeze_table_age ;
 int default_multixact_freeze_min_age ;
 int default_multixact_freeze_table_age ;
 TYPE_5__* extract_autovac_opts (int ,int ) ;
 int * get_pgstat_tabentry_relid (int ,int ,int *,int *) ;
 TYPE_2__* hash_search (int *,int *,int ,int*) ;
 int heap_freetuple (int ) ;
 TYPE_3__* palloc (int) ;
 int * pgstat_fetch_stat_dbentry (int ) ;
 int relation_needs_vacanalyze (int ,TYPE_5__*,TYPE_4__*,int *,int,int*,int*,int*) ;

__attribute__((used)) static autovac_table *
table_recheck_autovac(Oid relid, HTAB *table_toast_map,
       TupleDesc pg_class_desc,
       int effective_multixact_freeze_max_age)
{
 Form_pg_class classForm;
 HeapTuple classTup;
 bool dovacuum;
 bool doanalyze;
 autovac_table *tab = ((void*)0);
 PgStat_StatTabEntry *tabentry;
 PgStat_StatDBEntry *shared;
 PgStat_StatDBEntry *dbentry;
 bool wraparound;
 AutoVacOpts *avopts;


 autovac_refresh_stats();

 shared = pgstat_fetch_stat_dbentry(InvalidOid);
 dbentry = pgstat_fetch_stat_dbentry(MyDatabaseId);


 classTup = SearchSysCacheCopy1(RELOID, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(classTup))
  return ((void*)0);
 classForm = (Form_pg_class) GETSTRUCT(classTup);





 avopts = extract_autovac_opts(classTup, pg_class_desc);
 if (classForm->relkind == RELKIND_TOASTVALUE &&
  avopts == ((void*)0) && table_toast_map != ((void*)0))
 {
  av_relation *hentry;
  bool found;

  hentry = hash_search(table_toast_map, &relid, HASH_FIND, &found);
  if (found && hentry->ar_hasrelopts)
   avopts = &hentry->ar_reloptions;
 }


 tabentry = get_pgstat_tabentry_relid(relid, classForm->relisshared,
           shared, dbentry);

 relation_needs_vacanalyze(relid, avopts, classForm, tabentry,
         effective_multixact_freeze_max_age,
         &dovacuum, &doanalyze, &wraparound);


 if (classForm->relkind == RELKIND_TOASTVALUE)
  doanalyze = 0;


 if (doanalyze || dovacuum)
 {
  int freeze_min_age;
  int freeze_table_age;
  int multixact_freeze_min_age;
  int multixact_freeze_table_age;
  int vac_cost_limit;
  double vac_cost_delay;
  int log_min_duration;
  vac_cost_delay = (avopts && avopts->vacuum_cost_delay >= 0)
   ? avopts->vacuum_cost_delay
   : (autovacuum_vac_cost_delay >= 0)
   ? autovacuum_vac_cost_delay
   : VacuumCostDelay;


  vac_cost_limit = (avopts && avopts->vacuum_cost_limit > 0)
   ? avopts->vacuum_cost_limit
   : (autovacuum_vac_cost_limit > 0)
   ? autovacuum_vac_cost_limit
   : VacuumCostLimit;


  log_min_duration = (avopts && avopts->log_min_duration >= 0)
   ? avopts->log_min_duration
   : Log_autovacuum_min_duration;


  freeze_min_age = (avopts && avopts->freeze_min_age >= 0)
   ? avopts->freeze_min_age
   : default_freeze_min_age;

  freeze_table_age = (avopts && avopts->freeze_table_age >= 0)
   ? avopts->freeze_table_age
   : default_freeze_table_age;

  multixact_freeze_min_age = (avopts &&
         avopts->multixact_freeze_min_age >= 0)
   ? avopts->multixact_freeze_min_age
   : default_multixact_freeze_min_age;

  multixact_freeze_table_age = (avopts &&
           avopts->multixact_freeze_table_age >= 0)
   ? avopts->multixact_freeze_table_age
   : default_multixact_freeze_table_age;

  tab = palloc(sizeof(autovac_table));
  tab->at_relid = relid;
  tab->at_sharedrel = classForm->relisshared;
  tab->at_params.options = VACOPT_SKIPTOAST |
   (dovacuum ? VACOPT_VACUUM : 0) |
   (doanalyze ? VACOPT_ANALYZE : 0) |
   (!wraparound ? VACOPT_SKIP_LOCKED : 0);
  tab->at_params.index_cleanup = VACOPT_TERNARY_DEFAULT;
  tab->at_params.truncate = VACOPT_TERNARY_DEFAULT;
  tab->at_params.freeze_min_age = freeze_min_age;
  tab->at_params.freeze_table_age = freeze_table_age;
  tab->at_params.multixact_freeze_min_age = multixact_freeze_min_age;
  tab->at_params.multixact_freeze_table_age = multixact_freeze_table_age;
  tab->at_params.is_wraparound = wraparound;
  tab->at_params.log_min_duration = log_min_duration;
  tab->at_vacuum_cost_limit = vac_cost_limit;
  tab->at_vacuum_cost_delay = vac_cost_delay;
  tab->at_relname = ((void*)0);
  tab->at_nspname = ((void*)0);
  tab->at_datname = ((void*)0);





  tab->at_dobalance =
   !(avopts && (avopts->vacuum_cost_limit > 0 ||
       avopts->vacuum_cost_delay > 0));
 }

 heap_freetuple(classTup);

 return tab;
}
