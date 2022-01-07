
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;


 int fromBitInterleaving (int,int,int,int,int,int,int) ;
 int memcpy (unsigned char*,int*,unsigned int) ;

void KeccakP1600_ExtractBytesInLane(const void *state, unsigned int lanePosition, unsigned char *data, unsigned int offset, unsigned int length)
{
    UINT32 *stateAsHalfLanes = (UINT32*)state;
    UINT32 low, high, temp, temp0, temp1;
    UINT8 laneAsBytes[8];

    fromBitInterleaving(stateAsHalfLanes[lanePosition*2], stateAsHalfLanes[lanePosition*2+1], low, high, temp, temp0, temp1);

    *((UINT32*)(laneAsBytes+0)) = low;
    *((UINT32*)(laneAsBytes+4)) = high;
    memcpy(data, laneAsBytes+offset, length);
}
