
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;


 int memset (void*,int ,int) ;

void KeccakP1600_Initialize(void *state)
{
    memset(state, 0, 200);
}
