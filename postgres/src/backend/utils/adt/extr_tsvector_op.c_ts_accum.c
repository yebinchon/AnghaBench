
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_13__ {int size; } ;
struct TYPE_12__ {int maxdepth; } ;
typedef TYPE_1__ TSVectorStat ;
typedef TYPE_2__* TSVector ;
typedef int MemoryContext ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 TYPE_2__* DatumGetTSVector (int ) ;
 TYPE_1__* MemoryContextAllocZero (int ,int) ;
 int chooseNextStatEntry (int ,TYPE_1__*,TYPE_2__*,int ,int,int) ;
 int insertStatEntry (int ,TYPE_1__*,TYPE_2__*,int) ;
 int pfree (TYPE_2__*) ;

__attribute__((used)) static TSVectorStat *
ts_accum(MemoryContext persistentContext, TSVectorStat *stat, Datum data)
{
 TSVector txt = DatumGetTSVector(data);
 uint32 i,
    nbit = 0,
    offset;

 if (stat == ((void*)0))
 {
  stat = MemoryContextAllocZero(persistentContext, sizeof(TSVectorStat));
  stat->maxdepth = 1;
 }


 if (txt == ((void*)0) || txt->size == 0)
 {
  if (txt && txt != (TSVector) DatumGetPointer(data))
   pfree(txt);
  return stat;
 }

 i = txt->size - 1;
 for (; i > 0; i >>= 1)
  nbit++;

 nbit = 1 << nbit;
 offset = (nbit - txt->size) / 2;

 insertStatEntry(persistentContext, stat, txt, (nbit >> 1) - offset);
 chooseNextStatEntry(persistentContext, stat, txt, 0, nbit, offset);

 return stat;
}
