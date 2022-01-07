
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sponge; } ;
typedef TYPE_1__ Keccak_HashInstance ;
typedef int HashReturn ;
typedef int DataLength ;
typedef int BitSequence ;


 int FAIL ;
 int KeccakWidth1600_SpongeSqueeze (int *,int *,int) ;

HashReturn Keccak_HashSqueeze(Keccak_HashInstance *instance, BitSequence *data, DataLength databitlen)
{
    if ((databitlen % 8) != 0)
        return FAIL;
    return (HashReturn)KeccakWidth1600_SpongeSqueeze(&instance->sponge, data, databitlen/8);
}
