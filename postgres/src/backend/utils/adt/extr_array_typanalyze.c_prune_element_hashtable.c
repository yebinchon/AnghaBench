
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frequency; int delta; int key; } ;
typedef TYPE_1__ TrackItem ;
struct TYPE_4__ {int typbyval; } ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;
typedef int Datum ;


 int DatumGetPointer (int ) ;
 int ERROR ;
 int HASH_REMOVE ;
 TYPE_2__* array_extra_data ;
 int elog (int ,char*) ;
 int * hash_search (int *,void const*,int ,int *) ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;
 int pfree (int ) ;

__attribute__((used)) static void
prune_element_hashtable(HTAB *elements_tab, int b_current)
{
 HASH_SEQ_STATUS scan_status;
 TrackItem *item;

 hash_seq_init(&scan_status, elements_tab);
 while ((item = (TrackItem *) hash_seq_search(&scan_status)) != ((void*)0))
 {
  if (item->frequency + item->delta <= b_current)
  {
   Datum value = item->key;

   if (hash_search(elements_tab, (const void *) &item->key,
       HASH_REMOVE, ((void*)0)) == ((void*)0))
    elog(ERROR, "hash table corrupted");

   if (!array_extra_data->typbyval)
    pfree(DatumGetPointer(value));
  }
 }
}
