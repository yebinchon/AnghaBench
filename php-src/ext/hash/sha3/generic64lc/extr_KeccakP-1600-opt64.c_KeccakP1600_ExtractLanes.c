
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;


 int fromWordToBytes (unsigned char*,int const) ;
 int memcpy (unsigned char*,void const*,unsigned int) ;

void KeccakP1600_ExtractLanes(const void *state, unsigned char *data, unsigned int laneCount)
{

    memcpy(data, state, laneCount*8);
}
