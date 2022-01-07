
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KeccakP1600_ExtractAndAddBytesInLane ;
 int KeccakP1600_ExtractAndAddLanes ;
 int SnP_ExtractAndAddBytes (void const*,unsigned char const*,unsigned char*,unsigned int,unsigned int,int ,int ,int) ;

void KeccakP1600_ExtractAndAddBytes(const void *state, const unsigned char *input, unsigned char *output, unsigned int offset, unsigned int length)
{
    SnP_ExtractAndAddBytes(state, input, output, offset, length, KeccakP1600_ExtractAndAddLanes, KeccakP1600_ExtractAndAddBytesInLane, 8);
}
