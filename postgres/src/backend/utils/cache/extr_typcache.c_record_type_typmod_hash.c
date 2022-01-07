
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int tupdesc; } ;
typedef TYPE_1__ RecordCacheEntry ;


 int hashTupleDesc (int ) ;

__attribute__((used)) static uint32
record_type_typmod_hash(const void *data, size_t size)
{
 RecordCacheEntry *entry = (RecordCacheEntry *) data;

 return hashTupleDesc(entry->tupdesc);
}
