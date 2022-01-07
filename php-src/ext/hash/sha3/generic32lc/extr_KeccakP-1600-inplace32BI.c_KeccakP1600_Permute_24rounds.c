
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KeccakP1600_Permute_Nrounds (void*,int) ;

void KeccakP1600_Permute_24rounds(void *state)
{
     KeccakP1600_Permute_Nrounds(state, 24);
}
