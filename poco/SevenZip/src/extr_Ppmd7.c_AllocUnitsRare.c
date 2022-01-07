
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UInt32 ;
struct TYPE_6__ {scalar_t__ GlueCount; scalar_t__* FreeList; void* UnitsStart; void* Text; } ;
typedef TYPE_1__ CPpmd7 ;


 int GlueFreeBlocks (TYPE_1__*) ;
 int I2U (unsigned int) ;
 unsigned int PPMD_NUM_INDEXES ;
 void* RemoveNode (TYPE_1__*,unsigned int) ;
 int SplitBlock (TYPE_1__*,void*,unsigned int,unsigned int) ;
 scalar_t__ U2B (int ) ;

__attribute__((used)) static void *AllocUnitsRare(CPpmd7 *p, unsigned indx)
{
  unsigned i;
  void *retVal;
  if (p->GlueCount == 0)
  {
    GlueFreeBlocks(p);
    if (p->FreeList[indx] != 0)
      return RemoveNode(p, indx);
  }
  i = indx;
  do
  {
    if (++i == PPMD_NUM_INDEXES)
    {
      UInt32 numBytes = U2B(I2U(indx));
      p->GlueCount--;
      return ((UInt32)(p->UnitsStart - p->Text) > numBytes) ? (p->UnitsStart -= numBytes) : (((void*)0));
    }
  }
  while (p->FreeList[i] == 0);
  retVal = RemoveNode(p, i);
  SplitBlock(p, retVal, i, indx);
  return retVal;
}
