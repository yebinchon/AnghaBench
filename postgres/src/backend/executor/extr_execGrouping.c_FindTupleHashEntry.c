
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleTableSlot ;
typedef TYPE_1__* TupleHashTable ;
typedef int TupleHashEntry ;
struct TYPE_3__ {int hashtab; int * cur_eq_func; int * in_hash_funcs; int * inputslot; int tempcxt; } ;
typedef int * MinimalTuple ;
typedef int MemoryContext ;
typedef int FmgrInfo ;
typedef int ExprState ;


 int MemoryContextSwitchTo (int ) ;
 int tuplehash_lookup (int ,int *) ;

TupleHashEntry
FindTupleHashEntry(TupleHashTable hashtable, TupleTableSlot *slot,
       ExprState *eqcomp,
       FmgrInfo *hashfunctions)
{
 TupleHashEntry entry;
 MemoryContext oldContext;
 MinimalTuple key;


 oldContext = MemoryContextSwitchTo(hashtable->tempcxt);


 hashtable->inputslot = slot;
 hashtable->in_hash_funcs = hashfunctions;
 hashtable->cur_eq_func = eqcomp;


 key = ((void*)0);
 entry = tuplehash_lookup(hashtable->hashtab, key);
 MemoryContextSwitchTo(oldContext);

 return entry;
}
