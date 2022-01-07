
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_10__ {scalar_t__ tsa_used; TYPE_3__* tsa_entries; struct TYPE_10__* tsa_next; } ;
typedef TYPE_1__ TabStatusArray ;
struct TYPE_11__ {TYPE_3__* tsa_entry; } ;
typedef TYPE_2__ TabStatHashEntry ;
struct TYPE_13__ {int keysize; int entrysize; } ;
struct TYPE_12__ {int t_shared; int t_id; } ;
typedef TYPE_3__ PgStat_TableStatus ;
typedef int Oid ;
typedef TYPE_4__ HASHCTL ;


 int HASH_BLOBS ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 scalar_t__ MemoryContextAllocZero (int ,int) ;
 scalar_t__ TABSTAT_QUANTUM ;
 int TopMemoryContext ;
 int * hash_create (char*,scalar_t__,TYPE_4__*,int) ;
 TYPE_2__* hash_search (int *,int *,int ,int*) ;
 int memset (TYPE_4__*,int ,int) ;
 int * pgStatTabHash ;
 TYPE_1__* pgStatTabList ;

__attribute__((used)) static PgStat_TableStatus *
get_tabstat_entry(Oid rel_id, bool isshared)
{
 TabStatHashEntry *hash_entry;
 PgStat_TableStatus *entry;
 TabStatusArray *tsa;
 bool found;




 if (pgStatTabHash == ((void*)0))
 {
  HASHCTL ctl;

  memset(&ctl, 0, sizeof(ctl));
  ctl.keysize = sizeof(Oid);
  ctl.entrysize = sizeof(TabStatHashEntry);

  pgStatTabHash = hash_create("pgstat TabStatusArray lookup hash table",
         TABSTAT_QUANTUM,
         &ctl,
         HASH_ELEM | HASH_BLOBS);
 }




 hash_entry = hash_search(pgStatTabHash, &rel_id, HASH_ENTER, &found);
 if (!found)
 {

  hash_entry->tsa_entry = ((void*)0);
 }




 if (hash_entry->tsa_entry)
  return hash_entry->tsa_entry;






 if (pgStatTabList == ((void*)0))
 {

  pgStatTabList = (TabStatusArray *)
   MemoryContextAllocZero(TopMemoryContext,
           sizeof(TabStatusArray));
 }

 tsa = pgStatTabList;
 while (tsa->tsa_used >= TABSTAT_QUANTUM)
 {
  if (tsa->tsa_next == ((void*)0))
   tsa->tsa_next = (TabStatusArray *)
    MemoryContextAllocZero(TopMemoryContext,
            sizeof(TabStatusArray));
  tsa = tsa->tsa_next;
 }





 entry = &tsa->tsa_entries[tsa->tsa_used++];
 entry->t_id = rel_id;
 entry->t_shared = isshared;




 hash_entry->tsa_entry = entry;

 return entry;
}
