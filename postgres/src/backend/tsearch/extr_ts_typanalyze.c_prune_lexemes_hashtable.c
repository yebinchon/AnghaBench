
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* lexeme; } ;
struct TYPE_4__ {int frequency; int delta; TYPE_1__ key; } ;
typedef TYPE_2__ TrackItem ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;


 int ERROR ;
 int HASH_REMOVE ;
 int elog (int ,char*) ;
 int * hash_search (int *,void const*,int ,int *) ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;
 int pfree (char*) ;

__attribute__((used)) static void
prune_lexemes_hashtable(HTAB *lexemes_tab, int b_current)
{
 HASH_SEQ_STATUS scan_status;
 TrackItem *item;

 hash_seq_init(&scan_status, lexemes_tab);
 while ((item = (TrackItem *) hash_seq_search(&scan_status)) != ((void*)0))
 {
  if (item->frequency + item->delta <= b_current)
  {
   char *lexeme = item->key.lexeme;

   if (hash_search(lexemes_tab, (const void *) &item->key,
       HASH_REMOVE, ((void*)0)) == ((void*)0))
    elog(ERROR, "hash table corrupted");
   pfree(lexeme);
  }
 }
}
