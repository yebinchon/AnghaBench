
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rate; unsigned int byteIOIndex; int state; scalar_t__ squeezing; } ;
typedef TYPE_1__ SpongeInstance ;


 int SnP_AddBytes (int ,unsigned char const*,unsigned int,unsigned int) ;
 size_t SnP_FastLoop_Absorb (int ,unsigned int,unsigned char const*,size_t) ;
 int SnP_Permute (int ) ;
 int SnP_width ;
 int displayBytes (int,char*,unsigned char const*,unsigned int) ;

int SpongeAbsorb(SpongeInstance *instance, const unsigned char *data, size_t dataByteLen)
{
    size_t i, j;
    unsigned int partialBlock;
    const unsigned char *curData;
    unsigned int rateInBytes = instance->rate/8;

    if (instance->squeezing)
        return 1;

    i = 0;
    curData = data;
    while(i < dataByteLen) {
        if ((instance->byteIOIndex == 0) && (dataByteLen >= (i + rateInBytes))) {
                for(j=dataByteLen-i; j>=rateInBytes; j-=rateInBytes) {



                    SnP_AddBytes(instance->state, curData, 0, rateInBytes);
                    SnP_Permute(instance->state);
                    curData+=rateInBytes;
                }
                i = dataByteLen - j;



        }
        else {

            partialBlock = (unsigned int)(dataByteLen - i);
            if (partialBlock+instance->byteIOIndex > rateInBytes)
                partialBlock = rateInBytes-instance->byteIOIndex;



            i += partialBlock;

            SnP_AddBytes(instance->state, curData, instance->byteIOIndex, partialBlock);
            curData += partialBlock;
            instance->byteIOIndex += partialBlock;
            if (instance->byteIOIndex == rateInBytes) {
                SnP_Permute(instance->state);
                instance->byteIOIndex = 0;
            }
        }
    }
    return 0;
}
