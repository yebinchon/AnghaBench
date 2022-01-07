
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int StartOfFile; int nAvgBytesPerSec; } ;
typedef TYPE_1__ WAVEParserImpl ;
typedef int LONGLONG ;


 int BYTES_FROM_MEDIATIME (int) ;

__attribute__((used)) static LONGLONG bytepos_to_duration(WAVEParserImpl *This, LONGLONG bytepos)
{
    LONGLONG duration = BYTES_FROM_MEDIATIME(bytepos - This->StartOfFile);
    duration *= 10000000;
    duration /= This->nAvgBytesPerSec;

    return duration;
}
