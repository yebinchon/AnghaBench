
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KeccakP1600_ExtractBytesInLane ;
 int KeccakP1600_ExtractLanes ;
 int SnP_ExtractBytes (void const*,unsigned char*,unsigned int,unsigned int,int ,int ,int) ;

void KeccakP1600_ExtractBytes(const void *state, unsigned char *data, unsigned int offset, unsigned int length)
{
    SnP_ExtractBytes(state, data, offset, length, KeccakP1600_ExtractLanes, KeccakP1600_ExtractBytesInLane, 8);
}
