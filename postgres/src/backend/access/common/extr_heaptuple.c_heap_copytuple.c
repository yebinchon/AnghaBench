
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_len; int * t_data; int t_tableOid; int t_self; } ;
typedef int * HeapTupleHeader ;
typedef TYPE_1__* HeapTuple ;


 int HEAPTUPLESIZE ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ palloc (int) ;

HeapTuple
heap_copytuple(HeapTuple tuple)
{
 HeapTuple newTuple;

 if (!HeapTupleIsValid(tuple) || tuple->t_data == ((void*)0))
  return ((void*)0);

 newTuple = (HeapTuple) palloc(HEAPTUPLESIZE + tuple->t_len);
 newTuple->t_len = tuple->t_len;
 newTuple->t_self = tuple->t_self;
 newTuple->t_tableOid = tuple->t_tableOid;
 newTuple->t_data = (HeapTupleHeader) ((char *) newTuple + HEAPTUPLESIZE);
 memcpy((char *) newTuple->t_data, (char *) tuple->t_data, tuple->t_len);
 return newTuple;
}
