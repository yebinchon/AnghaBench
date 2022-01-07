
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ stepIndexR; scalar_t__ stepIndexL; } ;
typedef int PACMDRVSTREAMINSTANCE ;
typedef TYPE_1__ AcmAdpcmData ;



__attribute__((used)) static void ADPCM_Reset(PACMDRVSTREAMINSTANCE adsi, AcmAdpcmData* aad)
{
    aad->stepIndexL = aad->stepIndexR = 0;
}
