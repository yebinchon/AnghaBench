
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_10__ {int relowner; } ;
struct TYPE_9__ {int nkeys; int conname; } ;
struct TYPE_8__ {scalar_t__ constr_queryno; } ;
typedef int Snapshot ;
typedef int SPIPlanPtr ;
typedef int Relation ;
typedef TYPE_1__ RI_QueryKey ;
typedef TYPE_2__ RI_ConstraintInfo ;
typedef int Oid ;
typedef int Datum ;


 int CommandCounterIncrement () ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 int GetLatestSnapshot () ;
 int GetTransactionSnapshot () ;
 int GetUserIdAndSecContext (int *,int*) ;
 int InvalidSnapshot ;
 scalar_t__ IsolationUsesXactSnapshot () ;
 int NameStr (int ) ;
 int RI_MAX_NUMKEYS ;
 scalar_t__ RI_PLAN_CHECK_LOOKUPPK ;
 scalar_t__ RI_PLAN_CHECK_LOOKUPPK_FROM_PK ;
 scalar_t__ RI_PLAN_LAST_ON_PK ;
 TYPE_7__* RelationGetForm (int ) ;
 int RelationGetRelationName (int ) ;
 int SECURITY_LOCAL_USERID_CHANGE ;
 int SECURITY_NOFORCE_RLS ;
 int SPI_OK_SELECT ;
 int SPI_execute_snapshot (int ,int *,char*,int ,int ,int,int,int) ;
 scalar_t__ SPI_processed ;
 int SPI_result_code_string (int) ;
 int SetUserIdAndSecContext (int ,int) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ,int ,int ) ;
 int ri_ExtractValues (int ,int *,TYPE_2__ const*,int,int *,char*) ;
 int ri_ReportViolation (TYPE_2__ const*,int ,int ,int *,int *,scalar_t__,int) ;

__attribute__((used)) static bool
ri_PerformCheck(const RI_ConstraintInfo *riinfo,
    RI_QueryKey *qkey, SPIPlanPtr qplan,
    Relation fk_rel, Relation pk_rel,
    TupleTableSlot *oldslot, TupleTableSlot *newslot,
    bool detectNewRows, int expect_OK)
{
 Relation query_rel,
    source_rel;
 bool source_is_pk;
 Snapshot test_snapshot;
 Snapshot crosscheck_snapshot;
 int limit;
 int spi_result;
 Oid save_userid;
 int save_sec_context;
 Datum vals[RI_MAX_NUMKEYS * 2];
 char nulls[RI_MAX_NUMKEYS * 2];





 if (qkey->constr_queryno <= RI_PLAN_LAST_ON_PK)
  query_rel = pk_rel;
 else
  query_rel = fk_rel;
 if (qkey->constr_queryno == RI_PLAN_CHECK_LOOKUPPK)
 {
  source_rel = fk_rel;
  source_is_pk = 0;
 }
 else
 {
  source_rel = pk_rel;
  source_is_pk = 1;
 }


 if (newslot)
 {
  ri_ExtractValues(source_rel, newslot, riinfo, source_is_pk,
       vals, nulls);
  if (oldslot)
   ri_ExtractValues(source_rel, oldslot, riinfo, source_is_pk,
        vals + riinfo->nkeys, nulls + riinfo->nkeys);
 }
 else
 {
  ri_ExtractValues(source_rel, oldslot, riinfo, source_is_pk,
       vals, nulls);
 }
 if (IsolationUsesXactSnapshot() && detectNewRows)
 {
  CommandCounterIncrement();
  test_snapshot = GetLatestSnapshot();
  crosscheck_snapshot = GetTransactionSnapshot();
 }
 else
 {

  test_snapshot = InvalidSnapshot;
  crosscheck_snapshot = InvalidSnapshot;
 }







 limit = (expect_OK == SPI_OK_SELECT) ? 1 : 0;


 GetUserIdAndSecContext(&save_userid, &save_sec_context);
 SetUserIdAndSecContext(RelationGetForm(query_rel)->relowner,
         save_sec_context | SECURITY_LOCAL_USERID_CHANGE |
         SECURITY_NOFORCE_RLS);


 spi_result = SPI_execute_snapshot(qplan,
           vals, nulls,
           test_snapshot, crosscheck_snapshot,
           0, 0, limit);


 SetUserIdAndSecContext(save_userid, save_sec_context);


 if (spi_result < 0)
  elog(ERROR, "SPI_execute_snapshot returned %s", SPI_result_code_string(spi_result));

 if (expect_OK >= 0 && spi_result != expect_OK)
  ereport(ERROR,
    (errcode(ERRCODE_INTERNAL_ERROR),
     errmsg("referential integrity query on \"%s\" from constraint \"%s\" on \"%s\" gave unexpected result",
      RelationGetRelationName(pk_rel),
      NameStr(riinfo->conname),
      RelationGetRelationName(fk_rel)),
     errhint("This is most likely due to a rule having rewritten the query.")));


 if (qkey->constr_queryno != RI_PLAN_CHECK_LOOKUPPK_FROM_PK &&
  expect_OK == SPI_OK_SELECT &&
  (SPI_processed == 0) == (qkey->constr_queryno == RI_PLAN_CHECK_LOOKUPPK))
  ri_ReportViolation(riinfo,
         pk_rel, fk_rel,
         newslot ? newslot : oldslot,
         ((void*)0),
         qkey->constr_queryno, 0);

 return SPI_processed != 0;
}
