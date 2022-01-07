
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KeccakP1600_AddBytesInLane (void*,unsigned int,unsigned char const*,unsigned int,unsigned int) ;
 int KeccakP1600_SetBytesInLaneToZero (void*,unsigned int,unsigned int,unsigned int) ;

void KeccakP1600_OverwriteBytesInLane(void *state, unsigned int lanePosition, const unsigned char *data, unsigned int offset, unsigned int length)
{
    KeccakP1600_SetBytesInLaneToZero(state, lanePosition, offset, length);
    KeccakP1600_AddBytesInLane(state, lanePosition, data, offset, length);
}
