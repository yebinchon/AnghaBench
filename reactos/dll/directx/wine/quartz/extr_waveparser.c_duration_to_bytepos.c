
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nAvgBytesPerSec; int nBlockAlign; int StartOfFile; } ;
typedef TYPE_1__ WAVEParserImpl ;
typedef int LONGLONG ;


 scalar_t__ BYTES_FROM_MEDIATIME (int ) ;
 int MEDIATIME_FROM_BYTES (int) ;

__attribute__((used)) static LONGLONG duration_to_bytepos(WAVEParserImpl *This, LONGLONG duration)
{
    LONGLONG bytepos;

    bytepos = This->nAvgBytesPerSec;
    bytepos *= duration;
    bytepos /= 10000000;
    bytepos -= bytepos % This->nBlockAlign;
    bytepos += BYTES_FROM_MEDIATIME(This->StartOfFile);

    return MEDIATIME_FROM_BYTES(bytepos);
}
