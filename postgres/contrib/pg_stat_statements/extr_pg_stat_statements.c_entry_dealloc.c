
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ calls; int usage; } ;
struct TYPE_9__ {scalar_t__ query_len; int key; TYPE_1__ counters; } ;
typedef TYPE_2__ pgssEntry ;
struct TYPE_10__ {int mean_query_len; int cur_median_usage; } ;
typedef int Size ;
typedef int HASH_SEQ_STATUS ;


 int ASSUMED_LENGTH_INIT ;
 int HASH_REMOVE ;
 int Max (int,int) ;
 int Min (int,int) ;
 int STICKY_DECREASE_FACTOR ;
 int USAGE_DEALLOC_PERCENT ;
 int USAGE_DECREASE_FACTOR ;
 int entry_cmp ;
 int hash_get_num_entries (int ) ;
 int hash_search (int ,int *,int ,int *) ;
 int hash_seq_init (int *,int ) ;
 TYPE_2__* hash_seq_search (int *) ;
 TYPE_2__** palloc (int) ;
 int pfree (TYPE_2__**) ;
 TYPE_4__* pgss ;
 int pgss_hash ;
 int qsort (TYPE_2__**,int,int,int ) ;

__attribute__((used)) static void
entry_dealloc(void)
{
 HASH_SEQ_STATUS hash_seq;
 pgssEntry **entries;
 pgssEntry *entry;
 int nvictims;
 int i;
 Size tottextlen;
 int nvalidtexts;
 entries = palloc(hash_get_num_entries(pgss_hash) * sizeof(pgssEntry *));

 i = 0;
 tottextlen = 0;
 nvalidtexts = 0;

 hash_seq_init(&hash_seq, pgss_hash);
 while ((entry = hash_seq_search(&hash_seq)) != ((void*)0))
 {
  entries[i++] = entry;

  if (entry->counters.calls == 0)
   entry->counters.usage *= STICKY_DECREASE_FACTOR;
  else
   entry->counters.usage *= USAGE_DECREASE_FACTOR;

  if (entry->query_len >= 0)
  {
   tottextlen += entry->query_len + 1;
   nvalidtexts++;
  }
 }


 qsort(entries, i, sizeof(pgssEntry *), entry_cmp);


 if (i > 0)
  pgss->cur_median_usage = entries[i / 2]->counters.usage;

 if (nvalidtexts > 0)
  pgss->mean_query_len = tottextlen / nvalidtexts;
 else
  pgss->mean_query_len = ASSUMED_LENGTH_INIT;


 nvictims = Max(10, i * USAGE_DEALLOC_PERCENT / 100);
 nvictims = Min(nvictims, i);

 for (i = 0; i < nvictims; i++)
 {
  hash_search(pgss_hash, &entries[i]->key, HASH_REMOVE, ((void*)0));
 }

 pfree(entries);
}
