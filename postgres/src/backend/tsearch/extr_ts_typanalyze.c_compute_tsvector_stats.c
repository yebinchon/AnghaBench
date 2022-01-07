
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int hash_ctl ;
typedef double float4 ;
struct TYPE_23__ {int pos; int len; } ;
typedef TYPE_3__ WordEntry ;
struct TYPE_24__ {int stats_valid; double stanullfrac; double stawidth; double stadistinct; double** stanumbers; int* numnumbers; scalar_t__** stavalues; int* numvalues; int* statyplen; int* statypbyval; char* statypalign; int * statypid; int * stacoll; int * staop; int * stakind; int anl_context; TYPE_1__* attr; } ;
typedef TYPE_4__ VacAttrStats ;
struct TYPE_22__ {int length; scalar_t__ lexeme; } ;
struct TYPE_25__ {int frequency; int delta; TYPE_2__ key; } ;
typedef TYPE_5__ TrackItem ;
struct TYPE_28__ {int keysize; int entrysize; int hcxt; int match; int hash; } ;
struct TYPE_27__ {char* lexeme; int length; } ;
struct TYPE_26__ {int size; } ;
struct TYPE_21__ {int attstattarget; } ;
typedef TYPE_6__* TSVector ;
typedef int MemoryContext ;
typedef TYPE_7__ LexemeHashKey ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;
typedef TYPE_8__ HASHCTL ;
typedef scalar_t__ Datum ;
typedef scalar_t__ (* AnalyzeAttrFetchFunc ) (TYPE_4__*,int,int*) ;


 TYPE_3__* ARRPTR (TYPE_6__*) ;
 int Assert (int) ;
 int CurrentMemoryContext ;
 int DEBUG3 ;
 int DEFAULT_COLLATION_OID ;
 int DatumGetPointer (scalar_t__) ;
 TYPE_6__* DatumGetTSVector (scalar_t__) ;
 int HASH_COMPARE ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 int HASH_FUNCTION ;
 int Max (int,int) ;
 int MemSet (TYPE_8__*,int ,int) ;
 int MemoryContextSwitchTo (int ) ;
 int Min (int,int) ;
 scalar_t__ PointerGetDatum (int ) ;
 int STATISTIC_KIND_MCELEM ;
 char* STRPTR (TYPE_6__*) ;
 int TEXTOID ;
 scalar_t__ TSVectorGetDatum (TYPE_6__*) ;
 int TextEqualOperator ;
 scalar_t__ VARSIZE_ANY (int ) ;
 int cstring_to_text_with_len (scalar_t__,int ) ;
 int elog (int ,char*,int,int,int,int,int) ;
 int * hash_create (char*,int,TYPE_8__*,int) ;
 int hash_get_num_entries (int *) ;
 scalar_t__ hash_search (int *,void const*,int ,int*) ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;
 int lexeme_hash ;
 int lexeme_match ;
 int memcpy (scalar_t__,char*,int) ;
 scalar_t__ palloc (int) ;
 int pfree (TYPE_6__*) ;
 int prune_lexemes_hashtable (int *,int) ;
 int qsort (TYPE_5__**,int,int,int ) ;
 int trackitem_compare_frequencies_desc ;
 int trackitem_compare_lexemes ;
 int vacuum_delay_point () ;

__attribute__((used)) static void
compute_tsvector_stats(VacAttrStats *stats,
        AnalyzeAttrFetchFunc fetchfunc,
        int samplerows,
        double totalrows)
{
 int num_mcelem;
 int null_cnt = 0;
 double total_width = 0;


 HTAB *lexemes_tab;
 HASHCTL hash_ctl;
 HASH_SEQ_STATUS scan_status;


 int b_current;


 int bucket_width;
 int vector_no,
    lexeme_no;
 LexemeHashKey hash_key;
 TrackItem *item;







 num_mcelem = stats->attr->attstattarget * 10;





 bucket_width = (num_mcelem + 10) * 1000 / 7;






 MemSet(&hash_ctl, 0, sizeof(hash_ctl));
 hash_ctl.keysize = sizeof(LexemeHashKey);
 hash_ctl.entrysize = sizeof(TrackItem);
 hash_ctl.hash = lexeme_hash;
 hash_ctl.match = lexeme_match;
 hash_ctl.hcxt = CurrentMemoryContext;
 lexemes_tab = hash_create("Analyzed lexemes table",
         num_mcelem,
         &hash_ctl,
         HASH_ELEM | HASH_FUNCTION | HASH_COMPARE | HASH_CONTEXT);


 b_current = 1;
 lexeme_no = 0;


 for (vector_no = 0; vector_no < samplerows; vector_no++)
 {
  Datum value;
  bool isnull;
  TSVector vector;
  WordEntry *curentryptr;
  char *lexemesptr;
  int j;

  vacuum_delay_point();

  value = fetchfunc(stats, vector_no, &isnull);




  if (isnull)
  {
   null_cnt++;
   continue;
  }







  total_width += VARSIZE_ANY(DatumGetPointer(value));




  vector = DatumGetTSVector(value);





  lexemesptr = STRPTR(vector);
  curentryptr = ARRPTR(vector);
  for (j = 0; j < vector->size; j++)
  {
   bool found;







   hash_key.lexeme = lexemesptr + curentryptr->pos;
   hash_key.length = curentryptr->len;


   item = (TrackItem *) hash_search(lexemes_tab,
            (const void *) &hash_key,
            HASH_ENTER, &found);

   if (found)
   {

    item->frequency++;
   }
   else
   {

    item->frequency = 1;
    item->delta = b_current - 1;

    item->key.lexeme = palloc(hash_key.length);
    memcpy(item->key.lexeme, hash_key.lexeme, hash_key.length);
   }


   lexeme_no++;


   if (lexeme_no % bucket_width == 0)
   {
    prune_lexemes_hashtable(lexemes_tab, b_current);
    b_current++;
   }


   curentryptr++;
  }


  if (TSVectorGetDatum(vector) != value)
   pfree(vector);
 }


 if (null_cnt < samplerows)
 {
  int nonnull_cnt = samplerows - null_cnt;
  int i;
  TrackItem **sort_table;
  int track_len;
  int cutoff_freq;
  int minfreq,
     maxfreq;

  stats->stats_valid = 1;

  stats->stanullfrac = (double) null_cnt / (double) samplerows;
  stats->stawidth = total_width / (double) nonnull_cnt;


  stats->stadistinct = -1.0 * (1.0 - stats->stanullfrac);
  cutoff_freq = 9 * lexeme_no / bucket_width;

  i = hash_get_num_entries(lexemes_tab);
  sort_table = (TrackItem **) palloc(sizeof(TrackItem *) * i);

  hash_seq_init(&scan_status, lexemes_tab);
  track_len = 0;
  minfreq = lexeme_no;
  maxfreq = 0;
  while ((item = (TrackItem *) hash_seq_search(&scan_status)) != ((void*)0))
  {
   if (item->frequency > cutoff_freq)
   {
    sort_table[track_len++] = item;
    minfreq = Min(minfreq, item->frequency);
    maxfreq = Max(maxfreq, item->frequency);
   }
  }
  Assert(track_len <= i);


  elog(DEBUG3, "tsvector_stats: target # mces = %d, bucket width = %d, "
    "# lexemes = %d, hashtable size = %d, usable entries = %d",
    num_mcelem, bucket_width, lexeme_no, i, track_len);






  if (num_mcelem < track_len)
  {
   qsort(sort_table, track_len, sizeof(TrackItem *),
      trackitem_compare_frequencies_desc);

   minfreq = sort_table[num_mcelem - 1]->frequency;
  }
  else
   num_mcelem = track_len;


  if (num_mcelem > 0)
  {
   MemoryContext old_context;
   Datum *mcelem_values;
   float4 *mcelem_freqs;
   qsort(sort_table, num_mcelem, sizeof(TrackItem *),
      trackitem_compare_lexemes);


   old_context = MemoryContextSwitchTo(stats->anl_context);
   mcelem_values = (Datum *) palloc(num_mcelem * sizeof(Datum));
   mcelem_freqs = (float4 *) palloc((num_mcelem + 2) * sizeof(float4));





   for (i = 0; i < num_mcelem; i++)
   {
    TrackItem *item = sort_table[i];

    mcelem_values[i] =
     PointerGetDatum(cstring_to_text_with_len(item->key.lexeme,
                item->key.length));
    mcelem_freqs[i] = (double) item->frequency / (double) nonnull_cnt;
   }
   mcelem_freqs[i++] = (double) minfreq / (double) nonnull_cnt;
   mcelem_freqs[i] = (double) maxfreq / (double) nonnull_cnt;
   MemoryContextSwitchTo(old_context);

   stats->stakind[0] = STATISTIC_KIND_MCELEM;
   stats->staop[0] = TextEqualOperator;
   stats->stacoll[0] = DEFAULT_COLLATION_OID;
   stats->stanumbers[0] = mcelem_freqs;

   stats->numnumbers[0] = num_mcelem + 2;
   stats->stavalues[0] = mcelem_values;
   stats->numvalues[0] = num_mcelem;

   stats->statypid[0] = TEXTOID;
   stats->statyplen[0] = -1;
   stats->statypbyval[0] = 0;
   stats->statypalign[0] = 'i';
  }
 }
 else
 {

  stats->stats_valid = 1;
  stats->stanullfrac = 1.0;
  stats->stawidth = 0;
  stats->stadistinct = 0.0;
 }





}
