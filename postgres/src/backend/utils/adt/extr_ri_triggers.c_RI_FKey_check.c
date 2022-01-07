
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_30__ {TYPE_4__* tg_relation; int * tg_trigslot; int * tg_newslot; int tg_event; int tg_trigger; } ;
typedef TYPE_2__ TriggerData ;
struct TYPE_33__ {int nkeys; int * pf_eq_oprs; int * pk_attnums; int * fk_attnums; int conname; int confmatchtype; int pk_relid; } ;
struct TYPE_32__ {TYPE_1__* rd_rel; } ;
struct TYPE_31__ {int data; } ;
struct TYPE_29__ {scalar_t__ relkind; } ;
typedef TYPE_3__ StringInfoData ;
typedef int * SPIPlanPtr ;
typedef TYPE_4__* Relation ;
typedef int RI_QueryKey ;
typedef TYPE_5__ RI_ConstraintInfo ;
typedef int Oid ;
typedef int Datum ;


 int ERRCODE_FOREIGN_KEY_VIOLATION ;
 int ERROR ;



 int MAX_QUOTED_NAME_LEN ;
 int MAX_QUOTED_REL_NAME_LEN ;
 int NameStr (int ) ;
 int PointerGetDatum (int *) ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 int RIAttName (TYPE_4__*,int ) ;
 int RIAttType (TYPE_4__*,int ) ;



 int RI_MAX_NUMKEYS ;
 int RI_PLAN_CHECK_LOOKUPPK ;
 int RelationGetDescr (TYPE_4__*) ;
 int RelationGetRelationName (TYPE_4__*) ;
 int RowShareLock ;
 scalar_t__ SPI_OK_CONNECT ;
 scalar_t__ SPI_OK_FINISH ;
 int SPI_OK_SELECT ;
 scalar_t__ SPI_connect () ;
 scalar_t__ SPI_finish () ;
 int SnapshotSelf ;
 scalar_t__ TRIGGER_FIRED_BY_UPDATE (int ) ;
 int appendStringInfo (TYPE_3__*,char*,char const*,char*) ;
 int appendStringInfoString (TYPE_3__*,char*) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,int ,int ) ;
 int errtableconstraint (TYPE_4__*,int ) ;
 int initStringInfo (TYPE_3__*) ;
 int quoteOneName (char*,int ) ;
 int quoteRelationName (char*,TYPE_4__*) ;
 int ri_BuildQueryKey (int *,TYPE_5__ const*,int ) ;
 TYPE_5__* ri_FetchConstraintInfo (int ,TYPE_4__*,int) ;
 int * ri_FetchPreparedPlan (int *) ;
 int ri_GenerateQual (TYPE_3__*,char const*,char*,int ,int ,char*,int ) ;
 int ri_NullCheck (int ,int *,TYPE_5__ const*,int) ;
 int ri_PerformCheck (TYPE_5__ const*,int *,int *,TYPE_4__*,TYPE_4__*,int *,int *,int,int ) ;
 int * ri_PlanCheck (int ,int,int *,int *,TYPE_4__*,TYPE_4__*) ;
 int sprintf (char*,char*,int) ;
 int table_close (TYPE_4__*,int ) ;
 TYPE_4__* table_open (int ,int ) ;
 int table_tuple_satisfies_snapshot (TYPE_4__*,int *,int ) ;

__attribute__((used)) static Datum
RI_FKey_check(TriggerData *trigdata)
{
 const RI_ConstraintInfo *riinfo;
 Relation fk_rel;
 Relation pk_rel;
 TupleTableSlot *newslot;
 RI_QueryKey qkey;
 SPIPlanPtr qplan;

 riinfo = ri_FetchConstraintInfo(trigdata->tg_trigger,
         trigdata->tg_relation, 0);

 if (TRIGGER_FIRED_BY_UPDATE(trigdata->tg_event))
  newslot = trigdata->tg_newslot;
 else
  newslot = trigdata->tg_trigslot;
 if (!table_tuple_satisfies_snapshot(trigdata->tg_relation, newslot, SnapshotSelf))
  return PointerGetDatum(((void*)0));







 fk_rel = trigdata->tg_relation;
 pk_rel = table_open(riinfo->pk_relid, RowShareLock);

 switch (ri_NullCheck(RelationGetDescr(fk_rel), newslot, riinfo, 0))
 {
  case 130:





   table_close(pk_rel, RowShareLock);
   return PointerGetDatum(((void*)0));

  case 128:





   switch (riinfo->confmatchtype)
   {
    case 133:





     ereport(ERROR,
       (errcode(ERRCODE_FOREIGN_KEY_VIOLATION),
        errmsg("insert or update on table \"%s\" violates foreign key constraint \"%s\"",
         RelationGetRelationName(fk_rel),
         NameStr(riinfo->conname)),
        errdetail("MATCH FULL does not allow mixing of null and nonnull key values."),
        errtableconstraint(fk_rel,
            NameStr(riinfo->conname))));
     table_close(pk_rel, RowShareLock);
     return PointerGetDatum(((void*)0));

    case 131:





     table_close(pk_rel, RowShareLock);
     return PointerGetDatum(((void*)0));
   }

  case 129:





   break;
 }

 if (SPI_connect() != SPI_OK_CONNECT)
  elog(ERROR, "SPI_connect failed");


 ri_BuildQueryKey(&qkey, riinfo, RI_PLAN_CHECK_LOOKUPPK);

 if ((qplan = ri_FetchPreparedPlan(&qkey)) == ((void*)0))
 {
  StringInfoData querybuf;
  char pkrelname[MAX_QUOTED_REL_NAME_LEN];
  char attname[MAX_QUOTED_NAME_LEN];
  char paramname[16];
  const char *querysep;
  Oid queryoids[RI_MAX_NUMKEYS];
  const char *pk_only;
  initStringInfo(&querybuf);
  pk_only = pk_rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE ?
   "" : "ONLY ";
  quoteRelationName(pkrelname, pk_rel);
  appendStringInfo(&querybuf, "SELECT 1 FROM %s%s x",
       pk_only, pkrelname);
  querysep = "WHERE";
  for (int i = 0; i < riinfo->nkeys; i++)
  {
   Oid pk_type = RIAttType(pk_rel, riinfo->pk_attnums[i]);
   Oid fk_type = RIAttType(fk_rel, riinfo->fk_attnums[i]);

   quoteOneName(attname,
       RIAttName(pk_rel, riinfo->pk_attnums[i]));
   sprintf(paramname, "$%d", i + 1);
   ri_GenerateQual(&querybuf, querysep,
       attname, pk_type,
       riinfo->pf_eq_oprs[i],
       paramname, fk_type);
   querysep = "AND";
   queryoids[i] = fk_type;
  }
  appendStringInfoString(&querybuf, " FOR KEY SHARE OF x");


  qplan = ri_PlanCheck(querybuf.data, riinfo->nkeys, queryoids,
        &qkey, fk_rel, pk_rel);
 }




 ri_PerformCheck(riinfo, &qkey, qplan,
     fk_rel, pk_rel,
     ((void*)0), newslot,
     0,
     SPI_OK_SELECT);

 if (SPI_finish() != SPI_OK_FINISH)
  elog(ERROR, "SPI_finish failed");

 table_close(pk_rel, RowShareLock);

 return PointerGetDatum(((void*)0));
}
