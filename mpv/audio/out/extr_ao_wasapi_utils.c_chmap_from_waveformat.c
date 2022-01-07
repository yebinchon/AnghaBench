
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mp_chmap {scalar_t__ num; } ;
struct TYPE_4__ {int dwChannelMask; } ;
typedef TYPE_1__ WAVEFORMATEXTENSIBLE ;
struct TYPE_5__ {scalar_t__ wFormatTag; scalar_t__ nChannels; } ;
typedef TYPE_2__ WAVEFORMATEX ;


 scalar_t__ WAVE_FORMAT_EXTENSIBLE ;
 int bstr0 (char*) ;
 int mp_chmap_from_channels (struct mp_chmap*,scalar_t__) ;
 int mp_chmap_from_str (struct mp_chmap*,int ) ;
 int mp_chmap_from_waveext (struct mp_chmap*,int ) ;

__attribute__((used)) static bool chmap_from_waveformat(struct mp_chmap *channels,
                                  const WAVEFORMATEX *wf)
{
    if (wf->wFormatTag == WAVE_FORMAT_EXTENSIBLE) {
        WAVEFORMATEXTENSIBLE *wformat = (WAVEFORMATEXTENSIBLE *)wf;
        mp_chmap_from_waveext(channels, wformat->dwChannelMask);
    } else {
        mp_chmap_from_channels(channels, wf->nChannels);
    }

    if (channels->num != wf->nChannels) {
        mp_chmap_from_str(channels, bstr0("empty"));
        return 0;
    }

    return 1;
}
