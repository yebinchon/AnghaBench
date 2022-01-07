
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int TupleTableSlot ;
typedef TYPE_1__* TupleHashTable ;
struct TYPE_9__ {int firstTuple; int * additional; } ;
typedef TYPE_2__ TupleHashEntryData ;
typedef TYPE_2__* TupleHashEntry ;
struct TYPE_8__ {int hashtab; int tablecxt; int tab_eq_func; int cur_eq_func; int tab_hash_funcs; int in_hash_funcs; int * inputslot; int tempcxt; } ;
typedef int * MinimalTuple ;
typedef int MemoryContext ;


 int ExecCopySlotMinimalTuple (int *) ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_2__* tuplehash_insert (int ,int *,int*) ;
 TYPE_2__* tuplehash_lookup (int ,int *) ;

TupleHashEntry
LookupTupleHashEntry(TupleHashTable hashtable, TupleTableSlot *slot,
      bool *isnew)
{
 TupleHashEntryData *entry;
 MemoryContext oldContext;
 bool found;
 MinimalTuple key;


 oldContext = MemoryContextSwitchTo(hashtable->tempcxt);


 hashtable->inputslot = slot;
 hashtable->in_hash_funcs = hashtable->tab_hash_funcs;
 hashtable->cur_eq_func = hashtable->tab_eq_func;

 key = ((void*)0);

 if (isnew)
 {
  entry = tuplehash_insert(hashtable->hashtab, key, &found);

  if (found)
  {

   *isnew = 0;
  }
  else
  {

   *isnew = 1;

   entry->additional = ((void*)0);
   MemoryContextSwitchTo(hashtable->tablecxt);

   entry->firstTuple = ExecCopySlotMinimalTuple(slot);
  }
 }
 else
 {
  entry = tuplehash_lookup(hashtable->hashtab, key);
 }

 MemoryContextSwitchTo(oldContext);

 return entry;
}
