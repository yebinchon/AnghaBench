
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TupleHashTable ;
struct TYPE_3__ {int hashtab; } ;


 int tuplehash_reset (int ) ;

void
ResetTupleHashTable(TupleHashTable hashtable)
{
 tuplehash_reset(hashtable->hashtab);
}
