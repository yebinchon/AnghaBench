
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rate; int squeezing; unsigned int byteIOIndex; int state; } ;
typedef TYPE_1__ SpongeInstance ;


 int SnP_AddByte (int ,int,unsigned int) ;
 int SnP_Permute (int ) ;
 int SnP_width ;
 int displayBytes (int,char*,unsigned char*,unsigned int) ;
 int displayText (int,char*) ;
 int memset (unsigned char*,int ,int) ;

int SpongeAbsorbLastFewBits(SpongeInstance *instance, unsigned char delimitedData)
{
    unsigned int rateInBytes = instance->rate/8;

    if (delimitedData == 0)
        return 1;
    if (instance->squeezing)
        return 1;
    SnP_AddByte(instance->state, delimitedData, instance->byteIOIndex);

    if ((delimitedData >= 0x80) && (instance->byteIOIndex == (rateInBytes-1)))
        SnP_Permute(instance->state);

    SnP_AddByte(instance->state, 0x80, rateInBytes-1);
    SnP_Permute(instance->state);
    instance->byteIOIndex = 0;
    instance->squeezing = 1;



    return 0;
}
