
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short delimitedSuffix; int sponge; } ;
typedef TYPE_1__ Keccak_HashInstance ;
typedef scalar_t__ HashReturn ;
typedef int DataLength ;
typedef unsigned char BitSequence ;


 scalar_t__ KeccakWidth1600_SpongeAbsorb (int *,unsigned char const*,int) ;
 scalar_t__ SUCCESS ;

HashReturn Keccak_HashUpdate(Keccak_HashInstance *instance, const BitSequence *data, DataLength databitlen)
{
    if ((databitlen % 8) == 0)
        return (HashReturn)KeccakWidth1600_SpongeAbsorb(&instance->sponge, data, databitlen/8);
    else {
        HashReturn ret = (HashReturn)KeccakWidth1600_SpongeAbsorb(&instance->sponge, data, databitlen/8);
        if (ret == SUCCESS) {

            unsigned char lastByte = data[databitlen/8];

            unsigned short delimitedLastBytes = (unsigned short)((unsigned short)lastByte | ((unsigned short)instance->delimitedSuffix << (databitlen % 8)));
            if ((delimitedLastBytes & 0xFF00) == 0x0000) {
                instance->delimitedSuffix = delimitedLastBytes & 0xFF;
            }
            else {
                unsigned char oneByte[1];
                oneByte[0] = delimitedLastBytes & 0xFF;
                ret = (HashReturn)KeccakWidth1600_SpongeAbsorb(&instance->sponge, oneByte, 1);
                instance->delimitedSuffix = (delimitedLastBytes >> 8) & 0xFF;
            }
        }
        return ret;
    }
}
