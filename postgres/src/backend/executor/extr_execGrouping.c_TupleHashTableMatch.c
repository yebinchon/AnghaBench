
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tuplehash_hash {int private_data; } ;
typedef int TupleTableSlot ;
typedef TYPE_1__* TupleHashTable ;
struct TYPE_5__ {int * ecxt_outertuple; int * ecxt_innertuple; } ;
struct TYPE_4__ {int cur_eq_func; int * inputslot; int * tableslot; TYPE_2__* exprcontext; } ;
typedef int * MinimalTuple ;
typedef TYPE_2__ ExprContext ;


 int Assert (int ) ;
 int ExecQualAndReset (int ,TYPE_2__*) ;
 int ExecStoreMinimalTuple (int * const,int *,int) ;

__attribute__((used)) static int
TupleHashTableMatch(struct tuplehash_hash *tb, const MinimalTuple tuple1, const MinimalTuple tuple2)
{
 TupleTableSlot *slot1;
 TupleTableSlot *slot2;
 TupleHashTable hashtable = (TupleHashTable) tb->private_data;
 ExprContext *econtext = hashtable->exprcontext;







 Assert(tuple1 != ((void*)0));
 slot1 = hashtable->tableslot;
 ExecStoreMinimalTuple(tuple1, slot1, 0);
 Assert(tuple2 == ((void*)0));
 slot2 = hashtable->inputslot;


 econtext->ecxt_innertuple = slot2;
 econtext->ecxt_outertuple = slot1;
 return !ExecQualAndReset(hashtable->cur_eq_func, econtext);
}
