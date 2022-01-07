
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct tuplehash_hash {int private_data; } ;
typedef int TupleTableSlot ;
typedef TYPE_1__* TupleHashTable ;
struct TYPE_2__ {int numCols; int hash_iv; int * tab_collations; int * tab_hash_funcs; int * tableslot; int * in_hash_funcs; int * inputslot; int * keyColIdx; } ;
typedef int * MinimalTuple ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef int AttrNumber ;


 int DatumGetUInt32 (int ) ;
 int ExecStoreMinimalTuple (int * const,int *,int) ;
 int FunctionCall1Coll (int *,int ,int ) ;
 int murmurhash32 (int) ;
 int slot_getattr (int *,int ,int*) ;

__attribute__((used)) static uint32
TupleHashTableHash(struct tuplehash_hash *tb, const MinimalTuple tuple)
{
 TupleHashTable hashtable = (TupleHashTable) tb->private_data;
 int numCols = hashtable->numCols;
 AttrNumber *keyColIdx = hashtable->keyColIdx;
 uint32 hashkey = hashtable->hash_iv;
 TupleTableSlot *slot;
 FmgrInfo *hashfunctions;
 int i;

 if (tuple == ((void*)0))
 {

  slot = hashtable->inputslot;
  hashfunctions = hashtable->in_hash_funcs;
 }
 else
 {






  slot = hashtable->tableslot;
  ExecStoreMinimalTuple(tuple, slot, 0);
  hashfunctions = hashtable->tab_hash_funcs;
 }

 for (i = 0; i < numCols; i++)
 {
  AttrNumber att = keyColIdx[i];
  Datum attr;
  bool isNull;


  hashkey = (hashkey << 1) | ((hashkey & 0x80000000) ? 1 : 0);

  attr = slot_getattr(slot, att, &isNull);

  if (!isNull)
  {
   uint32 hkey;

   hkey = DatumGetUInt32(FunctionCall1Coll(&hashfunctions[i],
             hashtable->tab_collations[i],
             attr));
   hashkey ^= hkey;
  }
 }







 return murmurhash32(hashkey);
}
