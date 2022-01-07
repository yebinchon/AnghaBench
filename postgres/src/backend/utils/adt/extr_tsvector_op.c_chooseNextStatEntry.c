
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int size; } ;
typedef int TSVectorStat ;
typedef TYPE_1__* TSVector ;
typedef int MemoryContext ;


 int insertStatEntry (int ,int *,TYPE_1__*,int) ;

__attribute__((used)) static void
chooseNextStatEntry(MemoryContext persistentContext, TSVectorStat *stat, TSVector txt,
     uint32 low, uint32 high, uint32 offset)
{
 uint32 pos;
 uint32 middle = (low + high) >> 1;

 pos = (low + middle) >> 1;
 if (low != middle && pos >= offset && pos - offset < txt->size)
  insertStatEntry(persistentContext, stat, txt, pos - offset);
 pos = (high + middle + 1) >> 1;
 if (middle + 1 != high && pos >= offset && pos - offset < txt->size)
  insertStatEntry(persistentContext, stat, txt, pos - offset);

 if (low != middle)
  chooseNextStatEntry(persistentContext, stat, txt, low, middle, offset);
 if (high != middle + 1)
  chooseNextStatEntry(persistentContext, stat, txt, middle + 1, high, offset);
}
