
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_16__ ;


typedef double float8 ;
typedef double float4 ;
struct TYPE_19__ {int stats_valid; double stanullfrac; double stawidth; double stadistinct; int* numvalues; int* statyplen; int* statypbyval; char* statypalign; double** stanumbers; int* numnumbers; int * stakind; int * statypid; int ** stavalues; int * stacoll; int * staop; int anl_context; TYPE_1__* attr; scalar_t__ extra_data; } ;
typedef TYPE_2__ VacAttrStats ;
struct TYPE_17__ {int fn_oid; } ;
struct TYPE_20__ {int rng_collation; TYPE_16__ rng_subdiff_finfo; } ;
typedef TYPE_3__ TypeCacheEntry ;
struct TYPE_21__ {int val; scalar_t__ infinite; } ;
struct TYPE_18__ {int attstattarget; } ;
typedef int RangeType ;
typedef TYPE_4__ RangeBound ;
typedef int MemoryContext ;
typedef int Datum ;
typedef int (* AnalyzeAttrFetchFunc ) (TYPE_2__*,int,int*) ;


 double DatumGetFloat8 (int ) ;
 int DatumGetPointer (int ) ;
 int * DatumGetRangeTypeP (int ) ;
 int FLOAT8OID ;
 int Float8GetDatum (double) ;
 int Float8LessOperator ;
 int FunctionCall2Coll (TYPE_16__*,int ,int ,int ) ;
 int InvalidOid ;
 int MemoryContextSwitchTo (int ) ;
 int OidIsValid (int ) ;
 int PointerGetDatum (int ) ;
 int STATISTIC_KIND_BOUNDS_HISTOGRAM ;
 int STATISTIC_KIND_RANGE_LENGTH_HISTOGRAM ;
 scalar_t__ VARSIZE_ANY (int ) ;
 int float8_qsort_cmp ;
 double get_float8_infinity () ;
 int * palloc (int) ;
 int qsort (double*,int,int,int ) ;
 int qsort_arg (TYPE_4__*,int,int,int ,TYPE_3__*) ;
 int range_bound_qsort_cmp ;
 int range_deserialize (TYPE_3__*,int *,TYPE_4__*,TYPE_4__*,int*) ;
 int range_serialize (TYPE_3__*,TYPE_4__*,TYPE_4__*,int) ;
 int vacuum_delay_point () ;

__attribute__((used)) static void
compute_range_stats(VacAttrStats *stats, AnalyzeAttrFetchFunc fetchfunc,
     int samplerows, double totalrows)
{
 TypeCacheEntry *typcache = (TypeCacheEntry *) stats->extra_data;
 bool has_subdiff = OidIsValid(typcache->rng_subdiff_finfo.fn_oid);
 int null_cnt = 0;
 int non_null_cnt = 0;
 int non_empty_cnt = 0;
 int empty_cnt = 0;
 int range_no;
 int slot_idx;
 int num_bins = stats->attr->attstattarget;
 int num_hist;
 float8 *lengths;
 RangeBound *lowers,
      *uppers;
 double total_width = 0;


 lowers = (RangeBound *) palloc(sizeof(RangeBound) * samplerows);
 uppers = (RangeBound *) palloc(sizeof(RangeBound) * samplerows);
 lengths = (float8 *) palloc(sizeof(float8) * samplerows);


 for (range_no = 0; range_no < samplerows; range_no++)
 {
  Datum value;
  bool isnull,
     empty;
  RangeType *range;
  RangeBound lower,
     upper;
  float8 length;

  vacuum_delay_point();

  value = fetchfunc(stats, range_no, &isnull);
  if (isnull)
  {

   null_cnt++;
   continue;
  }





  total_width += VARSIZE_ANY(DatumGetPointer(value));


  range = DatumGetRangeTypeP(value);
  range_deserialize(typcache, range, &lower, &upper, &empty);

  if (!empty)
  {

   lowers[non_empty_cnt] = lower;
   uppers[non_empty_cnt] = upper;

   if (lower.infinite || upper.infinite)
   {

    length = get_float8_infinity();
   }
   else if (has_subdiff)
   {




    length = DatumGetFloat8(FunctionCall2Coll(
                &typcache->rng_subdiff_finfo,
                typcache->rng_collation,
                upper.val, lower.val));
   }
   else
   {

    length = 1.0;
   }
   lengths[non_empty_cnt] = length;

   non_empty_cnt++;
  }
  else
   empty_cnt++;

  non_null_cnt++;
 }

 slot_idx = 0;


 if (non_null_cnt > 0)
 {
  Datum *bound_hist_values;
  Datum *length_hist_values;
  int pos,
     posfrac,
     delta,
     deltafrac,
     i;
  MemoryContext old_cxt;
  float4 *emptyfrac;

  stats->stats_valid = 1;

  stats->stanullfrac = (double) null_cnt / (double) samplerows;
  stats->stawidth = total_width / (double) non_null_cnt;


  stats->stadistinct = -1.0 * (1.0 - stats->stanullfrac);


  old_cxt = MemoryContextSwitchTo(stats->anl_context);





  if (non_empty_cnt >= 2)
  {

   qsort_arg(lowers, non_empty_cnt, sizeof(RangeBound),
       range_bound_qsort_cmp, typcache);
   qsort_arg(uppers, non_empty_cnt, sizeof(RangeBound),
       range_bound_qsort_cmp, typcache);

   num_hist = non_empty_cnt;
   if (num_hist > num_bins)
    num_hist = num_bins + 1;

   bound_hist_values = (Datum *) palloc(num_hist * sizeof(Datum));
   delta = (non_empty_cnt - 1) / (num_hist - 1);
   deltafrac = (non_empty_cnt - 1) % (num_hist - 1);
   pos = posfrac = 0;

   for (i = 0; i < num_hist; i++)
   {
    bound_hist_values[i] = PointerGetDatum(range_serialize(
                    typcache, &lowers[pos], &uppers[pos], 0));
    pos += delta;
    posfrac += deltafrac;
    if (posfrac >= (num_hist - 1))
    {

     pos++;
     posfrac -= (num_hist - 1);
    }
   }

   stats->stakind[slot_idx] = STATISTIC_KIND_BOUNDS_HISTOGRAM;
   stats->stavalues[slot_idx] = bound_hist_values;
   stats->numvalues[slot_idx] = num_hist;
   slot_idx++;
  }





  if (non_empty_cnt >= 2)
  {




   qsort(lengths, non_empty_cnt, sizeof(float8), float8_qsort_cmp);

   num_hist = non_empty_cnt;
   if (num_hist > num_bins)
    num_hist = num_bins + 1;

   length_hist_values = (Datum *) palloc(num_hist * sizeof(Datum));
   delta = (non_empty_cnt - 1) / (num_hist - 1);
   deltafrac = (non_empty_cnt - 1) % (num_hist - 1);
   pos = posfrac = 0;

   for (i = 0; i < num_hist; i++)
   {
    length_hist_values[i] = Float8GetDatum(lengths[pos]);
    pos += delta;
    posfrac += deltafrac;
    if (posfrac >= (num_hist - 1))
    {

     pos++;
     posfrac -= (num_hist - 1);
    }
   }
  }
  else
  {






   length_hist_values = palloc(0);
   num_hist = 0;
  }
  stats->staop[slot_idx] = Float8LessOperator;
  stats->stacoll[slot_idx] = InvalidOid;
  stats->stavalues[slot_idx] = length_hist_values;
  stats->numvalues[slot_idx] = num_hist;
  stats->statypid[slot_idx] = FLOAT8OID;
  stats->statyplen[slot_idx] = sizeof(float8);



  stats->statypbyval[slot_idx] = 0;

  stats->statypalign[slot_idx] = 'd';


  emptyfrac = (float4 *) palloc(sizeof(float4));
  *emptyfrac = ((double) empty_cnt) / ((double) non_null_cnt);
  stats->stanumbers[slot_idx] = emptyfrac;
  stats->numnumbers[slot_idx] = 1;

  stats->stakind[slot_idx] = STATISTIC_KIND_RANGE_LENGTH_HISTOGRAM;
  slot_idx++;

  MemoryContextSwitchTo(old_cxt);
 }
 else if (null_cnt > 0)
 {

  stats->stats_valid = 1;
  stats->stanullfrac = 1.0;
  stats->stawidth = 0;
  stats->stadistinct = 0.0;
 }





}
