
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_28__ {int * tg_trigslot; TYPE_4__* tg_relation; int tg_trigger; } ;
typedef TYPE_2__ TriggerData ;
struct TYPE_31__ {int nkeys; int * pf_eq_oprs; int * fk_attnums; int * pk_attnums; int fk_relid; } ;
struct TYPE_30__ {TYPE_1__* rd_rel; } ;
struct TYPE_29__ {int data; int len; } ;
struct TYPE_27__ {scalar_t__ relkind; } ;
typedef TYPE_3__ StringInfoData ;
typedef int * SPIPlanPtr ;
typedef TYPE_4__* Relation ;
typedef int RI_QueryKey ;
typedef TYPE_5__ RI_ConstraintInfo ;
typedef scalar_t__ Oid ;
typedef int Datum ;


 int ERROR ;
 int MAX_QUOTED_NAME_LEN ;
 int MAX_QUOTED_REL_NAME_LEN ;
 int PointerGetDatum (int *) ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RIAttCollation (TYPE_4__*,int ) ;
 int RIAttName (TYPE_4__*,int ) ;
 scalar_t__ RIAttType (TYPE_4__*,int ) ;
 int RI_MAX_NUMKEYS ;
 int RI_PLAN_SETDEFAULT_DOUPDATE ;
 int RI_PLAN_SETNULL_DOUPDATE ;
 int RowExclusiveLock ;
 scalar_t__ SPI_OK_CONNECT ;
 scalar_t__ SPI_OK_FINISH ;
 int SPI_OK_UPDATE ;
 scalar_t__ SPI_connect () ;
 scalar_t__ SPI_finish () ;
 int appendBinaryStringInfo (TYPE_3__*,int ,int ) ;
 int appendStringInfo (TYPE_3__*,char*,char const*,char*,...) ;
 int elog (int ,char*) ;
 int get_collation_isdeterministic (scalar_t__) ;
 int initStringInfo (TYPE_3__*) ;
 int quoteOneName (char*,int ) ;
 int quoteRelationName (char*,TYPE_4__*) ;
 int ri_BuildQueryKey (int *,TYPE_5__ const*,int ) ;
 TYPE_5__* ri_FetchConstraintInfo (int ,TYPE_4__*,int) ;
 int * ri_FetchPreparedPlan (int *) ;
 int ri_GenerateQual (TYPE_3__*,char const*,char*,scalar_t__,int ,char*,scalar_t__) ;
 int ri_GenerateQualCollation (TYPE_3__*,scalar_t__) ;
 int ri_PerformCheck (TYPE_5__ const*,int *,int *,TYPE_4__*,TYPE_4__*,int *,int *,int,int ) ;
 int * ri_PlanCheck (int ,int,scalar_t__*,int *,TYPE_4__*,TYPE_4__*) ;
 int ri_restrict (TYPE_2__*,int) ;
 int sprintf (char*,char*,int) ;
 int table_close (TYPE_4__*,int ) ;
 TYPE_4__* table_open (int ,int ) ;

__attribute__((used)) static Datum
ri_set(TriggerData *trigdata, bool is_set_null)
{
 const RI_ConstraintInfo *riinfo;
 Relation fk_rel;
 Relation pk_rel;
 TupleTableSlot *oldslot;
 RI_QueryKey qkey;
 SPIPlanPtr qplan;

 riinfo = ri_FetchConstraintInfo(trigdata->tg_trigger,
         trigdata->tg_relation, 1);







 fk_rel = table_open(riinfo->fk_relid, RowExclusiveLock);
 pk_rel = trigdata->tg_relation;
 oldslot = trigdata->tg_trigslot;

 if (SPI_connect() != SPI_OK_CONNECT)
  elog(ERROR, "SPI_connect failed");





 ri_BuildQueryKey(&qkey, riinfo,
      (is_set_null
       ? RI_PLAN_SETNULL_DOUPDATE
       : RI_PLAN_SETDEFAULT_DOUPDATE));

 if ((qplan = ri_FetchPreparedPlan(&qkey)) == ((void*)0))
 {
  StringInfoData querybuf;
  StringInfoData qualbuf;
  char fkrelname[MAX_QUOTED_REL_NAME_LEN];
  char attname[MAX_QUOTED_NAME_LEN];
  char paramname[16];
  const char *querysep;
  const char *qualsep;
  Oid queryoids[RI_MAX_NUMKEYS];
  const char *fk_only;
  initStringInfo(&querybuf);
  initStringInfo(&qualbuf);
  fk_only = fk_rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE ?
   "" : "ONLY ";
  quoteRelationName(fkrelname, fk_rel);
  appendStringInfo(&querybuf, "UPDATE %s%s SET",
       fk_only, fkrelname);
  querysep = "";
  qualsep = "WHERE";
  for (int i = 0; i < riinfo->nkeys; i++)
  {
   Oid pk_type = RIAttType(pk_rel, riinfo->pk_attnums[i]);
   Oid fk_type = RIAttType(fk_rel, riinfo->fk_attnums[i]);
   Oid pk_coll = RIAttCollation(pk_rel, riinfo->pk_attnums[i]);
   Oid fk_coll = RIAttCollation(fk_rel, riinfo->fk_attnums[i]);

   quoteOneName(attname,
       RIAttName(fk_rel, riinfo->fk_attnums[i]));
   appendStringInfo(&querybuf,
        "%s %s = %s",
        querysep, attname,
        is_set_null ? "NULL" : "DEFAULT");
   sprintf(paramname, "$%d", i + 1);
   ri_GenerateQual(&qualbuf, qualsep,
       paramname, pk_type,
       riinfo->pf_eq_oprs[i],
       attname, fk_type);
   if (pk_coll != fk_coll && !get_collation_isdeterministic(pk_coll))
    ri_GenerateQualCollation(&querybuf, pk_coll);
   querysep = ",";
   qualsep = "AND";
   queryoids[i] = pk_type;
  }
  appendBinaryStringInfo(&querybuf, qualbuf.data, qualbuf.len);


  qplan = ri_PlanCheck(querybuf.data, riinfo->nkeys, queryoids,
        &qkey, fk_rel, pk_rel);
 }




 ri_PerformCheck(riinfo, &qkey, qplan,
     fk_rel, pk_rel,
     oldslot, ((void*)0),
     1,
     SPI_OK_UPDATE);

 if (SPI_finish() != SPI_OK_FINISH)
  elog(ERROR, "SPI_finish failed");

 table_close(fk_rel, RowExclusiveLock);

 if (is_set_null)
  return PointerGetDatum(((void*)0));
 else
 {
  return ri_restrict(trigdata, 1);
 }
}
