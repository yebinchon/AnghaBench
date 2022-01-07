
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_26__ {int nkeys; int * pp_eq_oprs; int * pk_attnums; } ;
struct TYPE_25__ {TYPE_1__* rd_rel; } ;
struct TYPE_24__ {int data; } ;
struct TYPE_23__ {scalar_t__ relkind; } ;
typedef TYPE_2__ StringInfoData ;
typedef int * SPIPlanPtr ;
typedef TYPE_3__* Relation ;
typedef int RI_QueryKey ;
typedef TYPE_4__ RI_ConstraintInfo ;
typedef int Oid ;


 int Assert (int) ;
 int ERROR ;
 int MAX_QUOTED_NAME_LEN ;
 int MAX_QUOTED_REL_NAME_LEN ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 int RIAttName (TYPE_3__*,int ) ;
 int RIAttType (TYPE_3__*,int ) ;
 scalar_t__ RI_KEYS_NONE_NULL ;
 int RI_MAX_NUMKEYS ;
 int RI_PLAN_CHECK_LOOKUPPK_FROM_PK ;
 int RelationGetDescr (TYPE_3__*) ;
 scalar_t__ SPI_OK_CONNECT ;
 scalar_t__ SPI_OK_FINISH ;
 int SPI_OK_SELECT ;
 scalar_t__ SPI_connect () ;
 scalar_t__ SPI_finish () ;
 int appendStringInfo (TYPE_2__*,char*,char const*,char*) ;
 int appendStringInfoString (TYPE_2__*,char*) ;
 int elog (int ,char*) ;
 int initStringInfo (TYPE_2__*) ;
 int quoteOneName (char*,int ) ;
 int quoteRelationName (char*,TYPE_3__*) ;
 int ri_BuildQueryKey (int *,TYPE_4__ const*,int ) ;
 int * ri_FetchPreparedPlan (int *) ;
 int ri_GenerateQual (TYPE_2__*,char const*,char*,int ,int ,char*,int ) ;
 scalar_t__ ri_NullCheck (int ,int *,TYPE_4__ const*,int) ;
 int ri_PerformCheck (TYPE_4__ const*,int *,int *,TYPE_3__*,TYPE_3__*,int *,int *,int,int ) ;
 int * ri_PlanCheck (int ,int,int *,int *,TYPE_3__*,TYPE_3__*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static bool
ri_Check_Pk_Match(Relation pk_rel, Relation fk_rel,
      TupleTableSlot *oldslot,
      const RI_ConstraintInfo *riinfo)
{
 SPIPlanPtr qplan;
 RI_QueryKey qkey;
 bool result;


 Assert(ri_NullCheck(RelationGetDescr(pk_rel), oldslot, riinfo, 1) == RI_KEYS_NONE_NULL);

 if (SPI_connect() != SPI_OK_CONNECT)
  elog(ERROR, "SPI_connect failed");





 ri_BuildQueryKey(&qkey, riinfo, RI_PLAN_CHECK_LOOKUPPK_FROM_PK);

 if ((qplan = ri_FetchPreparedPlan(&qkey)) == ((void*)0))
 {
  StringInfoData querybuf;
  char pkrelname[MAX_QUOTED_REL_NAME_LEN];
  char attname[MAX_QUOTED_NAME_LEN];
  char paramname[16];
  const char *querysep;
  const char *pk_only;
  Oid queryoids[RI_MAX_NUMKEYS];
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

   quoteOneName(attname,
       RIAttName(pk_rel, riinfo->pk_attnums[i]));
   sprintf(paramname, "$%d", i + 1);
   ri_GenerateQual(&querybuf, querysep,
       attname, pk_type,
       riinfo->pp_eq_oprs[i],
       paramname, pk_type);
   querysep = "AND";
   queryoids[i] = pk_type;
  }
  appendStringInfoString(&querybuf, " FOR KEY SHARE OF x");


  qplan = ri_PlanCheck(querybuf.data, riinfo->nkeys, queryoids,
        &qkey, fk_rel, pk_rel);
 }




 result = ri_PerformCheck(riinfo, &qkey, qplan,
        fk_rel, pk_rel,
        oldslot, ((void*)0),
        1,
        SPI_OK_SELECT);

 if (SPI_finish() != SPI_OK_FINISH)
  elog(ERROR, "SPI_finish failed");

 return result;
}
