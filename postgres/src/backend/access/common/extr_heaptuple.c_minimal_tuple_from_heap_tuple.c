
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_7__ {scalar_t__ t_len; scalar_t__ t_data; } ;
struct TYPE_6__ {scalar_t__ t_len; } ;
typedef TYPE_1__* MinimalTuple ;
typedef TYPE_2__* HeapTuple ;


 int Assert (int) ;
 scalar_t__ MINIMAL_TUPLE_OFFSET ;
 int memcpy (TYPE_1__*,char*,scalar_t__) ;
 scalar_t__ palloc (scalar_t__) ;

MinimalTuple
minimal_tuple_from_heap_tuple(HeapTuple htup)
{
 MinimalTuple result;
 uint32 len;

 Assert(htup->t_len > MINIMAL_TUPLE_OFFSET);
 len = htup->t_len - MINIMAL_TUPLE_OFFSET;
 result = (MinimalTuple) palloc(len);
 memcpy(result, (char *) htup->t_data + MINIMAL_TUPLE_OFFSET, len);
 result->t_len = len;
 return result;
}
