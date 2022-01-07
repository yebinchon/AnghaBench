
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_len; int * t_data; int t_tableOid; int t_self; } ;
typedef int * HeapTupleHeader ;
typedef TYPE_1__* HeapTuple ;


 int HeapTupleIsValid (TYPE_1__*) ;
 int memcpy (char*,char*,int ) ;
 scalar_t__ palloc (int ) ;

void
heap_copytuple_with_tuple(HeapTuple src, HeapTuple dest)
{
 if (!HeapTupleIsValid(src) || src->t_data == ((void*)0))
 {
  dest->t_data = ((void*)0);
  return;
 }

 dest->t_len = src->t_len;
 dest->t_self = src->t_self;
 dest->t_tableOid = src->t_tableOid;
 dest->t_data = (HeapTupleHeader) palloc(src->t_len);
 memcpy((char *) dest->t_data, (char *) src->t_data, src->t_len);
}
