
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int float4 ;
struct TYPE_15__ {int* numnumbers; int* numvalues; int* statyplen; char* statypalign; TYPE_1__* attr; int * statypbyval; int * statypid; scalar_t__** stavalues; int ** stanumbers; int * stacoll; int * staop; int * stakind; int stadistinct; int stawidth; int stanullfrac; int stats_valid; } ;
typedef TYPE_2__ VacAttrStats ;
struct TYPE_16__ {int t_self; } ;
struct TYPE_14__ {int attnum; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_3__* HeapTuple ;
typedef scalar_t__ Datum ;
typedef int ArrayType ;


 int Anum_pg_statistic_staattnum ;
 int Anum_pg_statistic_stacoll1 ;
 int Anum_pg_statistic_stadistinct ;
 int Anum_pg_statistic_stainherit ;
 int Anum_pg_statistic_stakind1 ;
 int Anum_pg_statistic_stanullfrac ;
 int Anum_pg_statistic_stanumbers1 ;
 int Anum_pg_statistic_staop1 ;
 int Anum_pg_statistic_starelid ;
 int Anum_pg_statistic_stavalues1 ;
 int Anum_pg_statistic_stawidth ;
 scalar_t__ BoolGetDatum (int) ;
 int CatalogTupleInsert (int ,TYPE_3__*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_3__*) ;
 int FLOAT4OID ;
 int FLOAT4PASSBYVAL ;
 scalar_t__ Float4GetDatum (int ) ;
 scalar_t__ HeapTupleIsValid (TYPE_3__*) ;
 scalar_t__ Int16GetDatum (int ) ;
 scalar_t__ Int32GetDatum (int ) ;
 int Natts_pg_statistic ;
 scalar_t__ ObjectIdGetDatum (int ) ;
 scalar_t__ PointerGetDatum (int *) ;
 int RelationGetDescr (int ) ;
 int ReleaseSysCache (TYPE_3__*) ;
 int RowExclusiveLock ;
 int STATISTIC_NUM_SLOTS ;
 int STATRELATTINH ;
 TYPE_3__* SearchSysCache3 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 int StatisticRelationId ;
 int * construct_array (scalar_t__*,int,int ,int,int ,char) ;
 TYPE_3__* heap_form_tuple (int ,scalar_t__*,int*) ;
 int heap_freetuple (TYPE_3__*) ;
 TYPE_3__* heap_modify_tuple (TYPE_3__*,int ,scalar_t__*,int*,int*) ;
 scalar_t__ palloc (int) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
update_attstats(Oid relid, bool inh, int natts, VacAttrStats **vacattrstats)
{
 Relation sd;
 int attno;

 if (natts <= 0)
  return;

 sd = table_open(StatisticRelationId, RowExclusiveLock);

 for (attno = 0; attno < natts; attno++)
 {
  VacAttrStats *stats = vacattrstats[attno];
  HeapTuple stup,
     oldtup;
  int i,
     k,
     n;
  Datum values[Natts_pg_statistic];
  bool nulls[Natts_pg_statistic];
  bool replaces[Natts_pg_statistic];


  if (!stats->stats_valid)
   continue;




  for (i = 0; i < Natts_pg_statistic; ++i)
  {
   nulls[i] = 0;
   replaces[i] = 1;
  }

  values[Anum_pg_statistic_starelid - 1] = ObjectIdGetDatum(relid);
  values[Anum_pg_statistic_staattnum - 1] = Int16GetDatum(stats->attr->attnum);
  values[Anum_pg_statistic_stainherit - 1] = BoolGetDatum(inh);
  values[Anum_pg_statistic_stanullfrac - 1] = Float4GetDatum(stats->stanullfrac);
  values[Anum_pg_statistic_stawidth - 1] = Int32GetDatum(stats->stawidth);
  values[Anum_pg_statistic_stadistinct - 1] = Float4GetDatum(stats->stadistinct);
  i = Anum_pg_statistic_stakind1 - 1;
  for (k = 0; k < STATISTIC_NUM_SLOTS; k++)
  {
   values[i++] = Int16GetDatum(stats->stakind[k]);
  }
  i = Anum_pg_statistic_staop1 - 1;
  for (k = 0; k < STATISTIC_NUM_SLOTS; k++)
  {
   values[i++] = ObjectIdGetDatum(stats->staop[k]);
  }
  i = Anum_pg_statistic_stacoll1 - 1;
  for (k = 0; k < STATISTIC_NUM_SLOTS; k++)
  {
   values[i++] = ObjectIdGetDatum(stats->stacoll[k]);
  }
  i = Anum_pg_statistic_stanumbers1 - 1;
  for (k = 0; k < STATISTIC_NUM_SLOTS; k++)
  {
   int nnum = stats->numnumbers[k];

   if (nnum > 0)
   {
    Datum *numdatums = (Datum *) palloc(nnum * sizeof(Datum));
    ArrayType *arry;

    for (n = 0; n < nnum; n++)
     numdatums[n] = Float4GetDatum(stats->stanumbers[k][n]);

    arry = construct_array(numdatums, nnum,
            FLOAT4OID,
            sizeof(float4), FLOAT4PASSBYVAL, 'i');
    values[i++] = PointerGetDatum(arry);
   }
   else
   {
    nulls[i] = 1;
    values[i++] = (Datum) 0;
   }
  }
  i = Anum_pg_statistic_stavalues1 - 1;
  for (k = 0; k < STATISTIC_NUM_SLOTS; k++)
  {
   if (stats->numvalues[k] > 0)
   {
    ArrayType *arry;

    arry = construct_array(stats->stavalues[k],
            stats->numvalues[k],
            stats->statypid[k],
            stats->statyplen[k],
            stats->statypbyval[k],
            stats->statypalign[k]);
    values[i++] = PointerGetDatum(arry);
   }
   else
   {
    nulls[i] = 1;
    values[i++] = (Datum) 0;
   }
  }


  oldtup = SearchSysCache3(STATRELATTINH,
         ObjectIdGetDatum(relid),
         Int16GetDatum(stats->attr->attnum),
         BoolGetDatum(inh));

  if (HeapTupleIsValid(oldtup))
  {

   stup = heap_modify_tuple(oldtup,
          RelationGetDescr(sd),
          values,
          nulls,
          replaces);
   ReleaseSysCache(oldtup);
   CatalogTupleUpdate(sd, &stup->t_self, stup);
  }
  else
  {

   stup = heap_form_tuple(RelationGetDescr(sd), values, nulls);
   CatalogTupleInsert(sd, stup);
  }

  heap_freetuple(stup);
 }

 table_close(sd, RowExclusiveLock);
}
