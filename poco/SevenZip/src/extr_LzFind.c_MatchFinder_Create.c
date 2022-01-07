
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_6__ {int keepSizeBefore; int keepSizeAfter; int matchMaxLen; int numHashBytes; int hashMask; int hashSizeSum; int numSons; int historySize; int cyclicBufferSize; int hash; scalar_t__ son; scalar_t__ btMode; scalar_t__ fixedHashSize; } ;
typedef int ISzAlloc ;
typedef TYPE_1__ CMatchFinder ;


 int AllocRefs (int,int *) ;
 scalar_t__ LzInWindow_Create (TYPE_1__*,int,int *) ;
 int MatchFinder_Free (TYPE_1__*,int *) ;
 int MatchFinder_FreeThisClassMemory (TYPE_1__*,int *) ;
 scalar_t__ kHash2Size ;
 scalar_t__ kHash3Size ;
 scalar_t__ kHash4Size ;
 int kMaxHistorySize ;

int MatchFinder_Create(CMatchFinder *p, UInt32 historySize,
    UInt32 keepAddBufferBefore, UInt32 matchMaxLen, UInt32 keepAddBufferAfter,
    ISzAlloc *alloc)
{
  UInt32 sizeReserv;
  if (historySize > kMaxHistorySize)
  {
    MatchFinder_Free(p, alloc);
    return 0;
  }
  sizeReserv = historySize >> 1;
  if (historySize > ((UInt32)2 << 30))
    sizeReserv = historySize >> 2;
  sizeReserv += (keepAddBufferBefore + matchMaxLen + keepAddBufferAfter) / 2 + (1 << 19);

  p->keepSizeBefore = historySize + keepAddBufferBefore + 1;
  p->keepSizeAfter = matchMaxLen + keepAddBufferAfter;

  if (LzInWindow_Create(p, sizeReserv, alloc))
  {
    UInt32 newCyclicBufferSize = historySize + 1;
    UInt32 hs;
    p->matchMaxLen = matchMaxLen;
    {
      p->fixedHashSize = 0;
      if (p->numHashBytes == 2)
        hs = (1 << 16) - 1;
      else
      {
        hs = historySize - 1;
        hs |= (hs >> 1);
        hs |= (hs >> 2);
        hs |= (hs >> 4);
        hs |= (hs >> 8);
        hs >>= 1;
        hs |= 0xFFFF;
        if (hs > (1 << 24))
        {
          if (p->numHashBytes == 3)
            hs = (1 << 24) - 1;
          else
            hs >>= 1;
        }
      }
      p->hashMask = hs;
      hs++;
      if (p->numHashBytes > 2) p->fixedHashSize += kHash2Size;
      if (p->numHashBytes > 3) p->fixedHashSize += kHash3Size;
      if (p->numHashBytes > 4) p->fixedHashSize += kHash4Size;
      hs += p->fixedHashSize;
    }

    {
      UInt32 prevSize = p->hashSizeSum + p->numSons;
      UInt32 newSize;
      p->historySize = historySize;
      p->hashSizeSum = hs;
      p->cyclicBufferSize = newCyclicBufferSize;
      p->numSons = (p->btMode ? newCyclicBufferSize * 2 : newCyclicBufferSize);
      newSize = p->hashSizeSum + p->numSons;
      if (p->hash != 0 && prevSize == newSize)
        return 1;
      MatchFinder_FreeThisClassMemory(p, alloc);
      p->hash = AllocRefs(newSize, alloc);
      if (p->hash != 0)
      {
        p->son = p->hash + p->hashSizeSum;
        return 1;
      }
    }
  }
  MatchFinder_Free(p, alloc);
  return 0;
}
