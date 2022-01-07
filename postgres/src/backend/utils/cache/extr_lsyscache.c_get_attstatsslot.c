
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int float4 ;
struct TYPE_8__ {scalar_t__ staop; scalar_t__ stacoll; int nnumbers; int * numbers_arr; int * numbers; int * values_arr; int nvalues; int values; scalar_t__ valuetype; } ;
struct TYPE_7__ {int stakind1; scalar_t__ staop1; scalar_t__ stacoll1; } ;
struct TYPE_6__ {int typbyval; int typalign; int typlen; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;
typedef TYPE_2__* Form_pg_statistic ;
typedef int Datum ;
typedef TYPE_3__ AttStatsSlot ;
typedef int ArrayType ;


 scalar_t__ ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 scalar_t__ ARR_ELEMTYPE (int *) ;
 scalar_t__ ARR_HASNULL (int *) ;
 int ARR_NDIM (int *) ;
 int ATTSTATSSLOT_NUMBERS ;
 int ATTSTATSSLOT_VALUES ;
 scalar_t__ Anum_pg_statistic_stanumbers1 ;
 scalar_t__ Anum_pg_statistic_stavalues1 ;
 scalar_t__ DEFAULT_COLLATION_OID ;
 int * DatumGetArrayTypePCopy (int ) ;
 int ERROR ;
 scalar_t__ FLOAT4OID ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ InvalidOid ;
 int ObjectIdGetDatum (scalar_t__) ;
 int ReleaseSysCache (int ) ;
 int STATISTIC_NUM_SLOTS ;
 int STATRELATTINH ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,scalar_t__,int*) ;
 int TYPEOID ;
 int deconstruct_array (int *,scalar_t__,int ,int ,int ,int *,int *,int *) ;
 int elog (int ,char*,...) ;
 int memset (TYPE_3__*,int ,int) ;
 int pfree (int *) ;

bool
get_attstatsslot(AttStatsSlot *sslot, HeapTuple statstuple,
     int reqkind, Oid reqop, int flags)
{
 Form_pg_statistic stats = (Form_pg_statistic) GETSTRUCT(statstuple);
 int i;
 Datum val;
 bool isnull;
 ArrayType *statarray;
 Oid arrayelemtype;
 int narrayelem;
 HeapTuple typeTuple;
 Form_pg_type typeForm;


 memset(sslot, 0, sizeof(AttStatsSlot));

 for (i = 0; i < STATISTIC_NUM_SLOTS; i++)
 {
  if ((&stats->stakind1)[i] == reqkind &&
   (reqop == InvalidOid || (&stats->staop1)[i] == reqop))
   break;
 }
 if (i >= STATISTIC_NUM_SLOTS)
  return 0;

 sslot->staop = (&stats->staop1)[i];
 sslot->stacoll = (&stats->stacoll1)[i];
 if (sslot->stacoll == InvalidOid)
  sslot->stacoll = DEFAULT_COLLATION_OID;

 if (flags & ATTSTATSSLOT_VALUES)
 {
  val = SysCacheGetAttr(STATRELATTINH, statstuple,
         Anum_pg_statistic_stavalues1 + i,
         &isnull);
  if (isnull)
   elog(ERROR, "stavalues is null");





  statarray = DatumGetArrayTypePCopy(val);





  sslot->valuetype = arrayelemtype = ARR_ELEMTYPE(statarray);


  typeTuple = SearchSysCache1(TYPEOID, ObjectIdGetDatum(arrayelemtype));
  if (!HeapTupleIsValid(typeTuple))
   elog(ERROR, "cache lookup failed for type %u", arrayelemtype);
  typeForm = (Form_pg_type) GETSTRUCT(typeTuple);


  deconstruct_array(statarray,
        arrayelemtype,
        typeForm->typlen,
        typeForm->typbyval,
        typeForm->typalign,
        &sslot->values, ((void*)0), &sslot->nvalues);







  if (!typeForm->typbyval)
   sslot->values_arr = statarray;
  else
   pfree(statarray);

  ReleaseSysCache(typeTuple);
 }

 if (flags & ATTSTATSSLOT_NUMBERS)
 {
  val = SysCacheGetAttr(STATRELATTINH, statstuple,
         Anum_pg_statistic_stanumbers1 + i,
         &isnull);
  if (isnull)
   elog(ERROR, "stanumbers is null");





  statarray = DatumGetArrayTypePCopy(val);






  narrayelem = ARR_DIMS(statarray)[0];
  if (ARR_NDIM(statarray) != 1 || narrayelem <= 0 ||
   ARR_HASNULL(statarray) ||
   ARR_ELEMTYPE(statarray) != FLOAT4OID)
   elog(ERROR, "stanumbers is not a 1-D float4 array");


  sslot->numbers = (float4 *) ARR_DATA_PTR(statarray);
  sslot->nnumbers = narrayelem;


  sslot->numbers_arr = statarray;
 }

 return 1;
}
