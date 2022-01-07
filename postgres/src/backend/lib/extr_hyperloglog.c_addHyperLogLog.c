
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_3__ {int registerWidth; int * hashesArr; } ;
typedef TYPE_1__ hyperLogLogState ;


 int BITS_PER_BYTE ;
 int Max (int ,int ) ;
 int rho (int,int) ;

void
addHyperLogLog(hyperLogLogState *cState, uint32 hash)
{
 uint8 count;
 uint32 index;


 index = hash >> (BITS_PER_BYTE * sizeof(uint32) - cState->registerWidth);


 count = rho(hash << cState->registerWidth,
    BITS_PER_BYTE * sizeof(uint32) - cState->registerWidth);

 cState->hashesArr[index] = Max(count, cState->hashesArr[index]);
}
