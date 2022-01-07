
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int litDistribTable ;
typedef scalar_t__ U32 ;
typedef int BYTE ;


 scalar_t__ const RDG_RAND15BITS ;
 int RDG_RANDLENGTH ;
 int RDG_genChar (scalar_t__*,int ) ;
 size_t RDG_rand (scalar_t__*) ;
 int memset (int *,int ,size_t) ;

void RDG_genBlock(void* buffer, size_t buffSize, size_t prefixSize, double matchProba, litDistribTable lt, unsigned* seedPtr)
{
    BYTE* buffPtr = (BYTE*)buffer;
    const U32 matchProba32 = (U32)(32768 * matchProba);
    size_t pos = prefixSize;
    U32* seed = seedPtr;


    while (matchProba >= 1.0) {
        size_t size0 = RDG_rand(seed) & 3;
        size0 = (size_t)1 << (16 + size0 * 2);
        size0 += RDG_rand(seed) & (size0-1);
        if (buffSize < pos + size0) {
            memset(buffPtr+pos, 0, buffSize-pos);
            return;
        }
        memset(buffPtr+pos, 0, size0);
        pos += size0;
        buffPtr[pos-1] = RDG_genChar(seed, lt);
    }


    if (pos==0) {
        buffPtr[0] = RDG_genChar(seed, lt);
        pos=1;
    }


    while (pos < buffSize) {

        if (RDG_RAND15BITS < matchProba32) {

            size_t match;
            size_t d;
            int length = RDG_RANDLENGTH + 4;
            U32 offset = RDG_RAND15BITS + 1;
            if (offset > pos) offset = (U32)pos;
            match = pos - offset;
            d = pos + length;
            if (d > buffSize) d = buffSize;
            while (pos < d) buffPtr[pos++] = buffPtr[match++];
        } else {

            size_t d;
            size_t length = RDG_RANDLENGTH;
            d = pos + length;
            if (d > buffSize) d = buffSize;
            while (pos < d) buffPtr[pos++] = RDG_genChar(seed, lt);
        }
    }
}
