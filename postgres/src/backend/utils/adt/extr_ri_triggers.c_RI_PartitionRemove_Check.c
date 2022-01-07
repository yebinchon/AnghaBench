
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_21__ ;
typedef struct TYPE_30__ TYPE_1__ ;


typedef int workmembuf ;
struct TYPE_32__ {int tts_isnull; int tts_values; } ;
typedef TYPE_2__ TupleTableSlot ;
typedef int TupleDesc ;
typedef int Trigger ;
struct TYPE_35__ {int nkeys; int* fk_attnums; int* pk_attnums; int confmatchtype; int * pf_eq_oprs; } ;
struct TYPE_34__ {TYPE_1__* rd_rel; } ;
struct TYPE_33__ {int data; } ;
struct TYPE_31__ {int tupdesc; int * vals; } ;
struct TYPE_30__ {scalar_t__ relkind; } ;
typedef TYPE_3__ StringInfoData ;
typedef int * SPIPlanPtr ;
typedef TYPE_4__* Relation ;
typedef TYPE_5__ RI_ConstraintInfo ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;


 int AtEOXact_GUC (int,int) ;
 int ERROR ;
 int ExecStoreVirtualTuple (TYPE_2__*) ;


 int GUC_ACTION_SAVE ;
 int GetLatestSnapshot () ;
 int InvalidSnapshot ;
 int MAX_QUOTED_NAME_LEN ;
 int MAX_QUOTED_REL_NAME_LEN ;
 TYPE_2__* MakeSingleTupleTableSlot (int ,int *) ;
 int NewGUCNestLevel () ;
 int PGC_S_SESSION ;
 int PGC_USERSET ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RIAttCollation (TYPE_4__*,int) ;
 int RIAttName (TYPE_4__*,int) ;
 scalar_t__ RIAttType (TYPE_4__*,int) ;
 int RelationGetRelid (TYPE_4__*) ;
 scalar_t__ SPI_OK_CONNECT ;
 scalar_t__ SPI_OK_FINISH ;
 int SPI_OK_SELECT ;
 scalar_t__ SPI_connect () ;
 int SPI_execute_snapshot (int *,int *,int *,int ,int ,int,int,int) ;
 scalar_t__ SPI_finish () ;
 int * SPI_prepare (int ,int ,int *) ;
 scalar_t__ SPI_processed ;
 int SPI_result ;
 int SPI_result_code_string (int) ;
 TYPE_21__* SPI_tuptable ;
 int TTSOpsVirtual ;
 int appendStringInfo (TYPE_3__*,char*,...) ;
 int appendStringInfoChar (TYPE_3__*,char) ;
 int appendStringInfoString (TYPE_3__*,char*) ;
 int elog (int ,char*,...) ;
 int heap_deform_tuple (int ,int ,int ,int ) ;
 int initStringInfo (TYPE_3__*) ;
 int maintenance_work_mem ;
 int memcpy (TYPE_5__*,TYPE_5__ const*,int) ;
 char* pg_get_partconstrdef_string (int ,char*) ;
 int quoteOneName (char*,int ) ;
 int quoteRelationName (char*,TYPE_4__*) ;
 TYPE_5__* ri_FetchConstraintInfo (int *,TYPE_4__*,int) ;
 int ri_GenerateQual (TYPE_3__*,char const*,char*,scalar_t__,int ,char*,scalar_t__) ;
 int ri_GenerateQualCollation (TYPE_3__*,scalar_t__) ;
 int ri_ReportViolation (TYPE_5__*,TYPE_4__*,TYPE_4__*,TYPE_2__*,int ,int ,int) ;
 int set_config_option (char*,char*,int ,int ,int ,int,int ,int) ;
 int snprintf (char*,int,char*,int) ;
 int strcpy (char*,char*) ;

void
RI_PartitionRemove_Check(Trigger *trigger, Relation fk_rel, Relation pk_rel)
{
 const RI_ConstraintInfo *riinfo;
 StringInfoData querybuf;
 char *constraintDef;
 char pkrelname[MAX_QUOTED_REL_NAME_LEN];
 char fkrelname[MAX_QUOTED_REL_NAME_LEN];
 char pkattname[MAX_QUOTED_NAME_LEN + 3];
 char fkattname[MAX_QUOTED_NAME_LEN + 3];
 const char *sep;
 const char *fk_only;
 int save_nestlevel;
 char workmembuf[32];
 int spi_result;
 SPIPlanPtr qplan;
 int i;

 riinfo = ri_FetchConstraintInfo(trigger, fk_rel, 0);
 initStringInfo(&querybuf);
 appendStringInfoString(&querybuf, "SELECT ");
 sep = "";
 for (i = 0; i < riinfo->nkeys; i++)
 {
  quoteOneName(fkattname,
      RIAttName(fk_rel, riinfo->fk_attnums[i]));
  appendStringInfo(&querybuf, "%sfk.%s", sep, fkattname);
  sep = ", ";
 }

 quoteRelationName(pkrelname, pk_rel);
 quoteRelationName(fkrelname, fk_rel);
 fk_only = fk_rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE ?
  "" : "ONLY ";
 appendStringInfo(&querybuf,
      " FROM %s%s fk JOIN %s pk ON",
      fk_only, fkrelname, pkrelname);
 strcpy(pkattname, "pk.");
 strcpy(fkattname, "fk.");
 sep = "(";
 for (i = 0; i < riinfo->nkeys; i++)
 {
  Oid pk_type = RIAttType(pk_rel, riinfo->pk_attnums[i]);
  Oid fk_type = RIAttType(fk_rel, riinfo->fk_attnums[i]);
  Oid pk_coll = RIAttCollation(pk_rel, riinfo->pk_attnums[i]);
  Oid fk_coll = RIAttCollation(fk_rel, riinfo->fk_attnums[i]);

  quoteOneName(pkattname + 3,
      RIAttName(pk_rel, riinfo->pk_attnums[i]));
  quoteOneName(fkattname + 3,
      RIAttName(fk_rel, riinfo->fk_attnums[i]));
  ri_GenerateQual(&querybuf, sep,
      pkattname, pk_type,
      riinfo->pf_eq_oprs[i],
      fkattname, fk_type);
  if (pk_coll != fk_coll)
   ri_GenerateQualCollation(&querybuf, pk_coll);
  sep = "AND";
 }






 constraintDef = pg_get_partconstrdef_string(RelationGetRelid(pk_rel), "pk");
 if (constraintDef && constraintDef[0] != '\0')
  appendStringInfo(&querybuf, ") WHERE %s AND (",
       constraintDef);
 else
  appendStringInfo(&querybuf, ") WHERE (");

 sep = "";
 for (i = 0; i < riinfo->nkeys; i++)
 {
  quoteOneName(fkattname, RIAttName(fk_rel, riinfo->fk_attnums[i]));
  appendStringInfo(&querybuf,
       "%sfk.%s IS NOT NULL",
       sep, fkattname);
  switch (riinfo->confmatchtype)
  {
   case 128:
    sep = " AND ";
    break;
   case 129:
    sep = " OR ";
    break;
  }
 }
 appendStringInfoChar(&querybuf, ')');
 save_nestlevel = NewGUCNestLevel();

 snprintf(workmembuf, sizeof(workmembuf), "%d", maintenance_work_mem);
 (void) set_config_option("work_mem", workmembuf,
        PGC_USERSET, PGC_S_SESSION,
        GUC_ACTION_SAVE, 1, 0, 0);

 if (SPI_connect() != SPI_OK_CONNECT)
  elog(ERROR, "SPI_connect failed");





 qplan = SPI_prepare(querybuf.data, 0, ((void*)0));

 if (qplan == ((void*)0))
  elog(ERROR, "SPI_prepare returned %s for %s",
    SPI_result_code_string(SPI_result), querybuf.data);
 spi_result = SPI_execute_snapshot(qplan,
           ((void*)0), ((void*)0),
           GetLatestSnapshot(),
           InvalidSnapshot,
           1, 0, 1);


 if (spi_result != SPI_OK_SELECT)
  elog(ERROR, "SPI_execute_snapshot returned %s", SPI_result_code_string(spi_result));


 if (SPI_processed > 0)
 {
  TupleTableSlot *slot;
  HeapTuple tuple = SPI_tuptable->vals[0];
  TupleDesc tupdesc = SPI_tuptable->tupdesc;
  RI_ConstraintInfo fake_riinfo;

  slot = MakeSingleTupleTableSlot(tupdesc, &TTSOpsVirtual);

  heap_deform_tuple(tuple, tupdesc,
        slot->tts_values, slot->tts_isnull);
  ExecStoreVirtualTuple(slot);
  memcpy(&fake_riinfo, riinfo, sizeof(RI_ConstraintInfo));
  for (i = 0; i < fake_riinfo.nkeys; i++)
   fake_riinfo.pk_attnums[i] = i + 1;

  ri_ReportViolation(&fake_riinfo, pk_rel, fk_rel,
         slot, tupdesc, 0, 1);
 }

 if (SPI_finish() != SPI_OK_FINISH)
  elog(ERROR, "SPI_finish failed");




 AtEOXact_GUC(1, save_nestlevel);
}
