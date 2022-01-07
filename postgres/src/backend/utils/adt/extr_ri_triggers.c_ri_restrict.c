
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
struct TYPE_30__ {int * tg_trigslot; TYPE_4__* tg_relation; int tg_trigger; } ;
typedef TYPE_2__ TriggerData ;
struct TYPE_33__ {int nkeys; int * pf_eq_oprs; int * fk_attnums; int * pk_attnums; int fk_relid; } ;
struct TYPE_32__ {TYPE_1__* rd_rel; } ;
struct TYPE_31__ {int data; } ;
struct TYPE_29__ {scalar_t__ relkind; } ;
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
 int RI_PLAN_RESTRICT_CHECKREF ;
 int RowShareLock ;
 scalar_t__ SPI_OK_CONNECT ;
 scalar_t__ SPI_OK_FINISH ;
 int SPI_OK_SELECT ;
 scalar_t__ SPI_connect () ;
 scalar_t__ SPI_finish () ;
 int appendStringInfo (TYPE_3__*,char*,char const*,char*) ;
 int appendStringInfoString (TYPE_3__*,char*) ;
 int elog (int ,char*) ;
 int get_collation_isdeterministic (scalar_t__) ;
 int initStringInfo (TYPE_3__*) ;
 int quoteOneName (char*,int ) ;
 int quoteRelationName (char*,TYPE_4__*) ;
 int ri_BuildQueryKey (int *,TYPE_5__ const*,int ) ;
 scalar_t__ ri_Check_Pk_Match (TYPE_4__*,TYPE_4__*,int *,TYPE_5__ const*) ;
 TYPE_5__* ri_FetchConstraintInfo (int ,TYPE_4__*,int) ;
 int * ri_FetchPreparedPlan (int *) ;
 int ri_GenerateQual (TYPE_3__*,char const*,char*,scalar_t__,int ,char*,scalar_t__) ;
 int ri_GenerateQualCollation (TYPE_3__*,scalar_t__) ;
 int ri_PerformCheck (TYPE_5__ const*,int *,int *,TYPE_4__*,TYPE_4__*,int *,int *,int,int ) ;
 int * ri_PlanCheck (int ,int,scalar_t__*,int *,TYPE_4__*,TYPE_4__*) ;
 int sprintf (char*,char*,int) ;
 int table_close (TYPE_4__*,int ) ;
 TYPE_4__* table_open (int ,int ) ;

__attribute__((used)) static Datum
ri_restrict(TriggerData *trigdata, bool is_no_action)
{
 const RI_ConstraintInfo *riinfo;
 Relation fk_rel;
 Relation pk_rel;
 TupleTableSlot *oldslot;
 RI_QueryKey qkey;
 SPIPlanPtr qplan;

 riinfo = ri_FetchConstraintInfo(trigdata->tg_trigger,
         trigdata->tg_relation, 1);







 fk_rel = table_open(riinfo->fk_relid, RowShareLock);
 pk_rel = trigdata->tg_relation;
 oldslot = trigdata->tg_trigslot;







 if (is_no_action &&
  ri_Check_Pk_Match(pk_rel, fk_rel, oldslot, riinfo))
 {
  table_close(fk_rel, RowShareLock);
  return PointerGetDatum(((void*)0));
 }

 if (SPI_connect() != SPI_OK_CONNECT)
  elog(ERROR, "SPI_connect failed");





 ri_BuildQueryKey(&qkey, riinfo, RI_PLAN_RESTRICT_CHECKREF);

 if ((qplan = ri_FetchPreparedPlan(&qkey)) == ((void*)0))
 {
  StringInfoData querybuf;
  char fkrelname[MAX_QUOTED_REL_NAME_LEN];
  char attname[MAX_QUOTED_NAME_LEN];
  char paramname[16];
  const char *querysep;
  Oid queryoids[RI_MAX_NUMKEYS];
  const char *fk_only;
  initStringInfo(&querybuf);
  fk_only = fk_rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE ?
   "" : "ONLY ";
  quoteRelationName(fkrelname, fk_rel);
  appendStringInfo(&querybuf, "SELECT 1 FROM %s%s x",
       fk_only, fkrelname);
  querysep = "WHERE";
  for (int i = 0; i < riinfo->nkeys; i++)
  {
   Oid pk_type = RIAttType(pk_rel, riinfo->pk_attnums[i]);
   Oid fk_type = RIAttType(fk_rel, riinfo->fk_attnums[i]);
   Oid pk_coll = RIAttCollation(pk_rel, riinfo->pk_attnums[i]);
   Oid fk_coll = RIAttCollation(fk_rel, riinfo->fk_attnums[i]);

   quoteOneName(attname,
       RIAttName(fk_rel, riinfo->fk_attnums[i]));
   sprintf(paramname, "$%d", i + 1);
   ri_GenerateQual(&querybuf, querysep,
       paramname, pk_type,
       riinfo->pf_eq_oprs[i],
       attname, fk_type);
   if (pk_coll != fk_coll && !get_collation_isdeterministic(pk_coll))
    ri_GenerateQualCollation(&querybuf, pk_coll);
   querysep = "AND";
   queryoids[i] = pk_type;
  }
  appendStringInfoString(&querybuf, " FOR KEY SHARE OF x");


  qplan = ri_PlanCheck(querybuf.data, riinfo->nkeys, queryoids,
        &qkey, fk_rel, pk_rel);
 }




 ri_PerformCheck(riinfo, &qkey, qplan,
     fk_rel, pk_rel,
     oldslot, ((void*)0),
     1,
     SPI_OK_SELECT);

 if (SPI_finish() != SPI_OK_FINISH)
  elog(ERROR, "SPI_finish failed");

 table_close(fk_rel, RowShareLock);

 return PointerGetDatum(((void*)0));
}
