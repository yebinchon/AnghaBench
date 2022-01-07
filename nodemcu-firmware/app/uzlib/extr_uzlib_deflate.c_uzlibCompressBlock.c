
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ushort ;
typedef int uint ;
typedef int uchar ;
struct TYPE_4__ {int hashMask; int* hashChain; int* hashTable; int hashBits; } ;
struct TYPE_3__ {int inLen; int inNdx; } ;


 int DBG_ADD_COUNT (int,int) ;
 int DBG_COUNT (int) ;
 int DBG_PRINT (char*,int,int,int) ;
 int MAX_MATCH ;
 int MAX_OFFSET ;
 int MIN_MATCH ;
 int NULL_OFFSET ;
 int OFFSET16_MASK ;
 int copy (int,int) ;
 TYPE_2__* dynamicTables ;
 int literal (int const) ;
 TYPE_1__* oBuf ;

void uzlibCompressBlock(const uchar *src, uint srcLen) {
  int i, j, k, l;
  uint hashMask = dynamicTables->hashMask;
  ushort *hashChain = dynamicTables->hashChain;
  ushort *hashTable = dynamicTables->hashTable;
  uint hashShift = 24 - dynamicTables->hashBits;
  uint lastOffset = 0, lastLen = 0;
  oBuf->inLen = srcLen;
  DBG_COUNT(9);

  for (i = 0; i <= ((int)srcLen) - MIN_MATCH; i++) {
    const uchar *this = src + i, *comp;
    uint base = i & ~OFFSET16_MASK;
    uint iOffset = i - base;
    uint maxLen = srcLen - i;
    uint matchLen = MIN_MATCH - 1;
    uint matchOffset = 0;
    uint v = (this[0] << 16) | (this[1] << 8) | this[2];
    uint hash = ((v >> hashShift) - v) & hashMask;
    uint nextOffset = hashTable[hash];
    oBuf->inNdx = i;
    DBG_COUNT(10);

    if (maxLen>MAX_MATCH)
      maxLen = MAX_MATCH;

    hashTable[hash] = iOffset;
    hashChain[iOffset & (MAX_OFFSET-1)] = nextOffset;

    for (l = 0; nextOffset != NULL_OFFSET && l<60; l++) {
      DBG_COUNT(11);


      j = base + nextOffset - ((nextOffset < iOffset) ? 0 : (OFFSET16_MASK + 1));

      if (i - j > MAX_OFFSET)
        break;

      for (k = 0, comp = src + j; this[k] == comp[k] && k < maxLen; k++)
        {}
      DBG_ADD_COUNT(12, k);

      if (k > matchLen) {
         matchOffset = i - j;
         matchLen = k;
      }
      nextOffset = hashChain[nextOffset & (MAX_OFFSET-1)];
    }

    if (lastOffset) {
      if (matchOffset == 0 || lastLen >= matchLen ) {

        DBG_COUNT(14);
        copy(lastOffset, lastLen);
        DBG_PRINT("dic: %6x %6x %6x\n", i-1, lastLen, lastOffset);
        i += lastLen - 1 - 1;
        lastOffset = lastLen = 0;
      } else {

        DBG_COUNT(15);
        literal(this[-1]);
        lastOffset = matchOffset;
        lastLen = matchLen;
      }
    } else {
      if (matchOffset) {
        DBG_COUNT(16);

        lastOffset = matchOffset;
        lastLen = matchLen;
      } else {
        DBG_COUNT(17);

        literal(this[0]);
      }
    }
  }

  if (lastOffset) {
    copy(lastOffset, lastLen);
    DBG_PRINT("dic: %6x %6x %6x\n", i, lastLen, lastOffset);
    i += lastLen - 1;
  }
  while (i < srcLen)
    literal(src[i++]);
}
