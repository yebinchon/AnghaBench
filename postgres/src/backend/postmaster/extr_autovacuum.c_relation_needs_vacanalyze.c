
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ float4 ;
typedef scalar_t__ TransactionId ;
struct TYPE_10__ {scalar_t__ vacuum_scale_factor; int vacuum_threshold; scalar_t__ analyze_scale_factor; int analyze_threshold; int enabled; int multixact_freeze_max_age; int freeze_max_age; } ;
struct TYPE_9__ {scalar_t__ reltuples; int relname; int relminmxid; int relfrozenxid; } ;
struct TYPE_8__ {scalar_t__ n_dead_tuples; scalar_t__ changes_since_analyze; } ;
typedef TYPE_1__ PgStat_StatTabEntry ;
typedef scalar_t__ Oid ;
typedef scalar_t__ MultiXactId ;
typedef TYPE_2__* Form_pg_class ;
typedef TYPE_3__ AutoVacOpts ;


 int AssertArg (int ) ;
 scalar_t__ AutoVacuumingActive () ;
 int DEBUG3 ;
 scalar_t__ FirstMultiXactId ;
 scalar_t__ FirstNormalTransactionId ;
 int Min (int ,int) ;
 scalar_t__ MultiXactIdIsValid (int ) ;
 scalar_t__ MultiXactIdPrecedes (int ,scalar_t__) ;
 int NameStr (int ) ;
 int OidIsValid (scalar_t__) ;
 scalar_t__ PointerIsValid (TYPE_1__*) ;
 scalar_t__ StatisticRelationId ;
 scalar_t__ TransactionIdIsNormal (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,scalar_t__) ;
 scalar_t__ autovacuum_anl_scale ;
 int autovacuum_anl_thresh ;
 int autovacuum_freeze_max_age ;
 scalar_t__ autovacuum_vac_scale ;
 int autovacuum_vac_thresh ;
 int elog (int ,char*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ recentMulti ;
 scalar_t__ recentXid ;

__attribute__((used)) static void
relation_needs_vacanalyze(Oid relid,
        AutoVacOpts *relopts,
        Form_pg_class classForm,
        PgStat_StatTabEntry *tabentry,
        int effective_multixact_freeze_max_age,

        bool *dovacuum,
        bool *doanalyze,
        bool *wraparound)
{
 bool force_vacuum;
 bool av_enabled;
 float4 reltuples;


 int vac_base_thresh,
    anl_base_thresh;
 float4 vac_scale_factor,
    anl_scale_factor;


 float4 vacthresh,
    anlthresh;


 float4 vactuples,
    anltuples;


 int freeze_max_age;
 int multixact_freeze_max_age;
 TransactionId xidForceLimit;
 MultiXactId multiForceLimit;

 AssertArg(classForm != ((void*)0));
 AssertArg(OidIsValid(relid));
 vac_scale_factor = (relopts && relopts->vacuum_scale_factor >= 0)
  ? relopts->vacuum_scale_factor
  : autovacuum_vac_scale;

 vac_base_thresh = (relopts && relopts->vacuum_threshold >= 0)
  ? relopts->vacuum_threshold
  : autovacuum_vac_thresh;

 anl_scale_factor = (relopts && relopts->analyze_scale_factor >= 0)
  ? relopts->analyze_scale_factor
  : autovacuum_anl_scale;

 anl_base_thresh = (relopts && relopts->analyze_threshold >= 0)
  ? relopts->analyze_threshold
  : autovacuum_anl_thresh;

 freeze_max_age = (relopts && relopts->freeze_max_age >= 0)
  ? Min(relopts->freeze_max_age, autovacuum_freeze_max_age)
  : autovacuum_freeze_max_age;

 multixact_freeze_max_age = (relopts && relopts->multixact_freeze_max_age >= 0)
  ? Min(relopts->multixact_freeze_max_age, effective_multixact_freeze_max_age)
  : effective_multixact_freeze_max_age;

 av_enabled = (relopts ? relopts->enabled : 1);


 xidForceLimit = recentXid - freeze_max_age;
 if (xidForceLimit < FirstNormalTransactionId)
  xidForceLimit -= FirstNormalTransactionId;
 force_vacuum = (TransactionIdIsNormal(classForm->relfrozenxid) &&
     TransactionIdPrecedes(classForm->relfrozenxid,
            xidForceLimit));
 if (!force_vacuum)
 {
  multiForceLimit = recentMulti - multixact_freeze_max_age;
  if (multiForceLimit < FirstMultiXactId)
   multiForceLimit -= FirstMultiXactId;
  force_vacuum = MultiXactIdIsValid(classForm->relminmxid) &&
   MultiXactIdPrecedes(classForm->relminmxid, multiForceLimit);
 }
 *wraparound = force_vacuum;


 if (!av_enabled && !force_vacuum)
 {
  *doanalyze = 0;
  *dovacuum = 0;
  return;
 }
 if (PointerIsValid(tabentry) && AutoVacuumingActive())
 {
  reltuples = classForm->reltuples;
  vactuples = tabentry->n_dead_tuples;
  anltuples = tabentry->changes_since_analyze;

  vacthresh = (float4) vac_base_thresh + vac_scale_factor * reltuples;
  anlthresh = (float4) anl_base_thresh + anl_scale_factor * reltuples;






  elog(DEBUG3, "%s: vac: %.0f (threshold %.0f), anl: %.0f (threshold %.0f)",
    NameStr(classForm->relname),
    vactuples, vacthresh, anltuples, anlthresh);


  *dovacuum = force_vacuum || (vactuples > vacthresh);
  *doanalyze = (anltuples > anlthresh);
 }
 else
 {





  *dovacuum = force_vacuum;
  *doanalyze = 0;
 }


 if (relid == StatisticRelationId)
  *doanalyze = 0;
}
