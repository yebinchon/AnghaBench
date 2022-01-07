
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;


 int KeccakP1600_SetBytesInLaneToZero (void*,unsigned int,int ,unsigned int) ;

void KeccakP1600_OverwriteWithZeroes(void *state, unsigned int byteCount)
{
    UINT32 *stateAsHalfLanes = (UINT32*)state;
    unsigned int i;

    for(i=0; i<byteCount/8; i++) {
        stateAsHalfLanes[i*2+0] = 0;
        stateAsHalfLanes[i*2+1] = 0;
    }
    if (byteCount%8 != 0)
        KeccakP1600_SetBytesInLaneToZero(state, byteCount/8, 0, byteCount%8);
}
