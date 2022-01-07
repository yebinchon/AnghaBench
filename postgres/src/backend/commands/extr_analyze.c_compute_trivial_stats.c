
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* VacAttrStatsP ;
struct TYPE_7__ {int stats_valid; double stanullfrac; double stawidth; double stadistinct; TYPE_1__* attrtype; } ;
struct TYPE_6__ {int typlen; int typbyval; } ;
typedef int Datum ;
typedef int (* AnalyzeAttrFetchFunc ) (TYPE_2__*,int,int*) ;


 int DatumGetCString (int ) ;
 int DatumGetPointer (int ) ;
 scalar_t__ VARSIZE_ANY (int ) ;
 scalar_t__ strlen (int ) ;
 int vacuum_delay_point () ;

__attribute__((used)) static void
compute_trivial_stats(VacAttrStatsP stats,
       AnalyzeAttrFetchFunc fetchfunc,
       int samplerows,
       double totalrows)
{
 int i;
 int null_cnt = 0;
 int nonnull_cnt = 0;
 double total_width = 0;
 bool is_varlena = (!stats->attrtype->typbyval &&
         stats->attrtype->typlen == -1);
 bool is_varwidth = (!stats->attrtype->typbyval &&
          stats->attrtype->typlen < 0);

 for (i = 0; i < samplerows; i++)
 {
  Datum value;
  bool isnull;

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
  }
  else if (is_varwidth)
  {

   total_width += strlen(DatumGetCString(value)) + 1;
  }
 }


 if (nonnull_cnt > 0)
 {
  stats->stats_valid = 1;

  stats->stanullfrac = (double) null_cnt / (double) samplerows;
  if (is_varwidth)
   stats->stawidth = total_width / (double) nonnull_cnt;
  else
   stats->stawidth = stats->attrtype->typlen;
  stats->stadistinct = 0.0;
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
