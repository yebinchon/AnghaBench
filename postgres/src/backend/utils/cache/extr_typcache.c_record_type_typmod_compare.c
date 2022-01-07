
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tupdesc; } ;
typedef TYPE_1__ RecordCacheEntry ;


 scalar_t__ equalTupleDescs (int ,int ) ;

__attribute__((used)) static int
record_type_typmod_compare(const void *a, const void *b, size_t size)
{
 RecordCacheEntry *left = (RecordCacheEntry *) a;
 RecordCacheEntry *right = (RecordCacheEntry *) b;

 return equalTupleDescs(left->tupdesc, right->tupdesc) ? 0 : 1;
}
