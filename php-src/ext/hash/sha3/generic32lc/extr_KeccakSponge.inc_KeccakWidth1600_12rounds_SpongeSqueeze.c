
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rate; unsigned int byteIOIndex; int state; int squeezing; } ;
typedef TYPE_1__ SpongeInstance ;


 int SnP_ExtractBytes (int ,unsigned char*,unsigned int,unsigned int) ;
 int SnP_Permute (int ) ;
 int SpongeAbsorbLastFewBits (TYPE_1__*,int) ;
 int displayBytes (int,char*,unsigned char*,unsigned int) ;

int SpongeSqueeze(SpongeInstance *instance, unsigned char *data, size_t dataByteLen)
{
    size_t i, j;
    unsigned int partialBlock;
    unsigned int rateInBytes = instance->rate/8;
    unsigned char *curData;

    if (!instance->squeezing)
        SpongeAbsorbLastFewBits(instance, 0x01);

    i = 0;
    curData = data;
    while(i < dataByteLen) {
        if ((instance->byteIOIndex == rateInBytes) && (dataByteLen >= (i + rateInBytes))) {
            for(j=dataByteLen-i; j>=rateInBytes; j-=rateInBytes) {
                SnP_Permute(instance->state);
                SnP_ExtractBytes(instance->state, curData, 0, rateInBytes);



                curData+=rateInBytes;
            }
            i = dataByteLen - j;
        }
        else {

            if (instance->byteIOIndex == rateInBytes) {
                SnP_Permute(instance->state);
                instance->byteIOIndex = 0;
            }
            partialBlock = (unsigned int)(dataByteLen - i);
            if (partialBlock+instance->byteIOIndex > rateInBytes)
                partialBlock = rateInBytes-instance->byteIOIndex;
            i += partialBlock;

            SnP_ExtractBytes(instance->state, curData, instance->byteIOIndex, partialBlock);



            curData += partialBlock;
            instance->byteIOIndex += partialBlock;
        }
    }
    return 0;
}
