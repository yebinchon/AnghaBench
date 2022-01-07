
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KeccakP1600_OverwriteBytesInLane ;
 int KeccakP1600_OverwriteLanes ;
 int SnP_OverwriteBytes (void*,unsigned char const*,unsigned int,unsigned int,int ,int ,int) ;

void KeccakP1600_OverwriteBytes(void *state, const unsigned char *data, unsigned int offset, unsigned int length)
{
    SnP_OverwriteBytes(state, data, offset, length, KeccakP1600_OverwriteLanes, KeccakP1600_OverwriteBytesInLane, 8);
}
