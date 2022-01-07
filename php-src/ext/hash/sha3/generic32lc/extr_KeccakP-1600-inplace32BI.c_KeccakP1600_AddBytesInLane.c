
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;


 int memcpy (int*,unsigned char const*,unsigned int) ;
 int memset (int*,int ,int) ;
 int toBitInterleavingAndXOR (int,int,int,int,int,int,int) ;

void KeccakP1600_AddBytesInLane(void *state, unsigned int lanePosition, const unsigned char *data, unsigned int offset, unsigned int length)
{
    UINT8 laneAsBytes[8];
    UINT32 low, high;
    UINT32 temp, temp0, temp1;
    UINT32 *stateAsHalfLanes = (UINT32*)state;

    memset(laneAsBytes, 0, 8);
    memcpy(laneAsBytes+offset, data, length);

    low = *((UINT32*)(laneAsBytes+0));
    high = *((UINT32*)(laneAsBytes+4));
    toBitInterleavingAndXOR(low, high, stateAsHalfLanes[lanePosition*2+0], stateAsHalfLanes[lanePosition*2+1], temp, temp0, temp1);
}
