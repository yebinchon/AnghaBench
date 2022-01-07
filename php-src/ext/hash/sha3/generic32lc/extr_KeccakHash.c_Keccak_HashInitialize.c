
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int fixedOutputLength; unsigned char delimitedSuffix; int sponge; } ;
typedef TYPE_1__ Keccak_HashInstance ;
typedef scalar_t__ HashReturn ;


 scalar_t__ FAIL ;
 scalar_t__ KeccakWidth1600_SpongeInitialize (int *,unsigned int,unsigned int) ;
 scalar_t__ SUCCESS ;

HashReturn Keccak_HashInitialize(Keccak_HashInstance *instance, unsigned int rate, unsigned int capacity, unsigned int hashbitlen, unsigned char delimitedSuffix)
{
    HashReturn result;

    if (delimitedSuffix == 0)
        return FAIL;
    result = (HashReturn)KeccakWidth1600_SpongeInitialize(&instance->sponge, rate, capacity);
    if (result != SUCCESS)
        return result;
    instance->fixedOutputLength = hashbitlen;
    instance->delimitedSuffix = delimitedSuffix;
    return SUCCESS;
}
