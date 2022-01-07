
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_5__ {int nused; int ** slots; } ;
struct TYPE_4__ {int ri_RelationDesc; TYPE_2__* ri_CopyMultiInsertBuffer; } ;
typedef TYPE_1__ ResultRelInfo ;
typedef int CopyMultiInsertInfo ;
typedef TYPE_2__ CopyMultiInsertBuffer ;


 int Assert (int) ;
 int MAX_BUFFERED_TUPLES ;
 int * table_slot_create (int ,int *) ;

__attribute__((used)) static inline TupleTableSlot *
CopyMultiInsertInfoNextFreeSlot(CopyMultiInsertInfo *miinfo,
        ResultRelInfo *rri)
{
 CopyMultiInsertBuffer *buffer = rri->ri_CopyMultiInsertBuffer;
 int nused = buffer->nused;

 Assert(buffer != ((void*)0));
 Assert(nused < MAX_BUFFERED_TUPLES);

 if (buffer->slots[nused] == ((void*)0))
  buffer->slots[nused] = table_slot_create(rri->ri_RelationDesc, ((void*)0));
 return buffer->slots[nused];
}
