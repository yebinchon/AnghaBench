
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef double float4 ;
typedef TYPE_3__* VacAttrStatsP ;
struct TYPE_11__ {int eqopr; int eqfunc; } ;
struct TYPE_10__ {int stats_valid; double stanullfrac; double stawidth; double stadistinct; double** stanumbers; int* numnumbers; int* numvalues; TYPE_1__* attrtype; int ** stavalues; int attrcollid; int * stacoll; int * staop; int * stakind; int anl_context; scalar_t__ extra_data; TYPE_2__* attr; } ;
struct TYPE_9__ {int attstattarget; } ;
struct TYPE_8__ {int typlen; int typbyval; } ;
typedef TYPE_4__ StdAnalyzeData ;
typedef int MemoryContext ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef int (* AnalyzeAttrFetchFunc ) (TYPE_3__*,int,int*) ;


 scalar_t__ DatumGetBool (int ) ;
 int DatumGetCString (int ) ;
 int DatumGetPointer (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 int MemoryContextSwitchTo (int ) ;
 int PG_DETOAST_DATUM (int ) ;
 int PointerGetDatum (int ) ;
 int STATISTIC_KIND_MCV ;
 scalar_t__ VARSIZE_ANY (int ) ;
 scalar_t__ WIDTH_THRESHOLD ;
 int analyze_mcv_list (int*,int,double,double,int,double) ;
 int datumCopy (int ,int ,double) ;
 int floor (double) ;
 int fmgr_info (int ,int *) ;
 scalar_t__ palloc (int) ;
 scalar_t__ strlen (int ) ;
 int swapDatum (int ,int ) ;
 int swapInt (int,int) ;
 scalar_t__ toast_raw_datum_size (int ) ;
 int vacuum_delay_point () ;

__attribute__((used)) static void
compute_distinct_stats(VacAttrStatsP stats,
        AnalyzeAttrFetchFunc fetchfunc,
        int samplerows,
        double totalrows)
{
 int i;
 int null_cnt = 0;
 int nonnull_cnt = 0;
 int toowide_cnt = 0;
 double total_width = 0;
 bool is_varlena = (!stats->attrtype->typbyval &&
         stats->attrtype->typlen == -1);
 bool is_varwidth = (!stats->attrtype->typbyval &&
          stats->attrtype->typlen < 0);
 FmgrInfo f_cmpeq;
 typedef struct
 {
  Datum value;
  int count;
 } TrackItem;
 TrackItem *track;
 int track_cnt,
    track_max;
 int num_mcv = stats->attr->attstattarget;
 StdAnalyzeData *mystats = (StdAnalyzeData *) stats->extra_data;




 track_max = 2 * num_mcv;
 if (track_max < 10)
  track_max = 10;
 track = (TrackItem *) palloc(track_max * sizeof(TrackItem));
 track_cnt = 0;

 fmgr_info(mystats->eqfunc, &f_cmpeq);

 for (i = 0; i < samplerows; i++)
 {
  Datum value;
  bool isnull;
  bool match;
  int firstcount1,
     j;

  vacuum_delay_point();

  value = fetchfunc(stats, i, &isnull);


  if (isnull)
  {
   null_cnt++;
   continue;
  }
  nonnull_cnt++;







  if (is_varlena)
  {
   total_width += VARSIZE_ANY(DatumGetPointer(value));
   if (toast_raw_datum_size(value) > WIDTH_THRESHOLD)
   {
    toowide_cnt++;
    continue;
   }
   value = PointerGetDatum(PG_DETOAST_DATUM(value));
  }
  else if (is_varwidth)
  {

   total_width += strlen(DatumGetCString(value)) + 1;
  }




  match = 0;
  firstcount1 = track_cnt;
  for (j = 0; j < track_cnt; j++)
  {
   if (DatumGetBool(FunctionCall2Coll(&f_cmpeq,
              stats->attrcollid,
              value, track[j].value)))
   {
    match = 1;
    break;
   }
   if (j < firstcount1 && track[j].count == 1)
    firstcount1 = j;
  }

  if (match)
  {

   track[j].count++;

   while (j > 0 && track[j].count > track[j - 1].count)
   {
    swapDatum(track[j].value, track[j - 1].value);
    swapInt(track[j].count, track[j - 1].count);
    j--;
   }
  }
  else
  {

   if (track_cnt < track_max)
    track_cnt++;
   for (j = track_cnt - 1; j > firstcount1; j--)
   {
    track[j].value = track[j - 1].value;
    track[j].count = track[j - 1].count;
   }
   if (firstcount1 < track_cnt)
   {
    track[firstcount1].value = value;
    track[firstcount1].count = 1;
   }
  }
 }


 if (nonnull_cnt > 0)
 {
  int nmultiple,
     summultiple;

  stats->stats_valid = 1;

  stats->stanullfrac = (double) null_cnt / (double) samplerows;
  if (is_varwidth)
   stats->stawidth = total_width / (double) nonnull_cnt;
  else
   stats->stawidth = stats->attrtype->typlen;


  summultiple = 0;
  for (nmultiple = 0; nmultiple < track_cnt; nmultiple++)
  {
   if (track[nmultiple].count == 1)
    break;
   summultiple += track[nmultiple].count;
  }

  if (nmultiple == 0)
  {




   stats->stadistinct = -1.0 * (1.0 - stats->stanullfrac);
  }
  else if (track_cnt < track_max && toowide_cnt == 0 &&
     nmultiple == track_cnt)
  {
   stats->stadistinct = track_cnt;
  }
  else
  {
   int f1 = nonnull_cnt - summultiple;
   int d = f1 + nmultiple;
   double n = samplerows - null_cnt;
   double N = totalrows * (1.0 - stats->stanullfrac);
   double stadistinct;


   if (N > 0)
    stadistinct = (n * d) / ((n - f1) + f1 * n / N);
   else
    stadistinct = 0;


   if (stadistinct < d)
    stadistinct = d;
   if (stadistinct > N)
    stadistinct = N;

   stats->stadistinct = floor(stadistinct + 0.5);
  }







  if (stats->stadistinct > 0.1 * totalrows)
   stats->stadistinct = -(stats->stadistinct / totalrows);
  if (track_cnt < track_max && toowide_cnt == 0 &&
   stats->stadistinct > 0 &&
   track_cnt <= num_mcv)
  {

   num_mcv = track_cnt;
  }
  else
  {
   int *mcv_counts;


   if (num_mcv > track_cnt)
    num_mcv = track_cnt;

   if (num_mcv > 0)
   {
    mcv_counts = (int *) palloc(num_mcv * sizeof(int));
    for (i = 0; i < num_mcv; i++)
     mcv_counts[i] = track[i].count;

    num_mcv = analyze_mcv_list(mcv_counts, num_mcv,
             stats->stadistinct,
             stats->stanullfrac,
             samplerows, totalrows);
   }
  }


  if (num_mcv > 0)
  {
   MemoryContext old_context;
   Datum *mcv_values;
   float4 *mcv_freqs;


   old_context = MemoryContextSwitchTo(stats->anl_context);
   mcv_values = (Datum *) palloc(num_mcv * sizeof(Datum));
   mcv_freqs = (float4 *) palloc(num_mcv * sizeof(float4));
   for (i = 0; i < num_mcv; i++)
   {
    mcv_values[i] = datumCopy(track[i].value,
            stats->attrtype->typbyval,
            stats->attrtype->typlen);
    mcv_freqs[i] = (double) track[i].count / (double) samplerows;
   }
   MemoryContextSwitchTo(old_context);

   stats->stakind[0] = STATISTIC_KIND_MCV;
   stats->staop[0] = mystats->eqopr;
   stats->stacoll[0] = stats->attrcollid;
   stats->stanumbers[0] = mcv_freqs;
   stats->numnumbers[0] = num_mcv;
   stats->stavalues[0] = mcv_values;
   stats->numvalues[0] = num_mcv;





  }
 }
 else if (null_cnt > 0)
 {

  stats->stats_valid = 1;
  stats->stanullfrac = 1.0;
  if (is_varwidth)
   stats->stawidth = 0;
  else
   stats->stawidth = stats->attrtype->typlen;
  stats->stadistinct = 0.0;
 }


}
