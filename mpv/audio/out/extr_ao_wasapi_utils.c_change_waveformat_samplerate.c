
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nSamplesPerSec; } ;
struct TYPE_6__ {TYPE_1__ Format; } ;
typedef TYPE_2__ WAVEFORMATEXTENSIBLE ;
typedef int DWORD ;


 int update_waveformat_datarate (TYPE_2__*) ;

__attribute__((used)) static void change_waveformat_samplerate(WAVEFORMATEXTENSIBLE *wformat,
                                         DWORD samplerate)
{
    wformat->Format.nSamplesPerSec = samplerate;
    update_waveformat_datarate(wformat);
}
