
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mp_chmap {int num; } ;
struct TYPE_5__ {int nChannels; } ;
struct TYPE_6__ {int dwChannelMask; TYPE_1__ Format; } ;
typedef TYPE_2__ WAVEFORMATEXTENSIBLE ;


 int mp_chmap_to_waveext (struct mp_chmap*) ;
 int update_waveformat_datarate (TYPE_2__*) ;

__attribute__((used)) static void change_waveformat_channels(WAVEFORMATEXTENSIBLE *wformat,
                                       struct mp_chmap *channels)
{
    wformat->Format.nChannels = channels->num;
    wformat->dwChannelMask = mp_chmap_to_waveext(channels);
    update_waveformat_datarate(wformat);
}
