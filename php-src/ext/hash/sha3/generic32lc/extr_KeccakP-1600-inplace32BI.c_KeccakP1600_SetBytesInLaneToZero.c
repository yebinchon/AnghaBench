
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;


 int memset (int*,int,int) ;
 int toBitInterleavingAndAND (int,int,int,int,int,int,int) ;

void KeccakP1600_SetBytesInLaneToZero(void *state, unsigned int lanePosition, unsigned int offset, unsigned int length)
{
    UINT8 laneAsBytes[8];
    UINT32 low, high;
    UINT32 temp, temp0, temp1;
    UINT32 *stateAsHalfLanes = (UINT32*)state;

    memset(laneAsBytes, 0xFF, offset);
    memset(laneAsBytes+offset, 0x00, length);
    memset(laneAsBytes+offset+length, 0xFF, 8-offset-length);

    low = *((UINT32*)(laneAsBytes+0));
    high = *((UINT32*)(laneAsBytes+4));
    toBitInterleavingAndAND(low, high, stateAsHalfLanes[lanePosition*2+0], stateAsHalfLanes[lanePosition*2+1], temp, temp0, temp1);
}
