
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KeccakP1600_AddBytesInLane ;
 int KeccakP1600_AddLanes ;
 int SnP_AddBytes (void*,unsigned char const*,unsigned int,unsigned int,int ,int ,int) ;

void KeccakP1600_AddBytes(void *state, const unsigned char *data, unsigned int offset, unsigned int length)
{
    SnP_AddBytes(state, data, offset, length, KeccakP1600_AddLanes, KeccakP1600_AddBytesInLane, 8);
}
