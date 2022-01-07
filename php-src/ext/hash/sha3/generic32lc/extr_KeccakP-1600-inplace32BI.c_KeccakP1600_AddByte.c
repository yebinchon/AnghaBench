
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int UINT32 ;


 int toBitInterleavingAndXOR (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;

void KeccakP1600_AddByte(void *state, unsigned char byte, unsigned int offset)
{
    unsigned int lanePosition = offset/8;
    unsigned int offsetInLane = offset%8;
    UINT32 low, high;
    UINT32 temp, temp0, temp1;
    UINT32 *stateAsHalfLanes = (UINT32*)state;

    if (offsetInLane < 4) {
        low = (UINT32)byte << (offsetInLane*8);
        high = 0;
    }
    else {
        low = 0;
        high = (UINT32)byte << ((offsetInLane-4)*8);
    }
    toBitInterleavingAndXOR(low, high, stateAsHalfLanes[lanePosition*2+0], stateAsHalfLanes[lanePosition*2+1], temp, temp0, temp1);
}
