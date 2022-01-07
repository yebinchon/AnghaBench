
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wasapi_sample_fmt {int used_msb; int mp_format; int bits; } ;
struct mp_chmap {int num; } ;
struct TYPE_6__ {int wValidBitsPerSample; } ;
struct TYPE_7__ {int cbSize; int wBitsPerSample; int nSamplesPerSec; int nChannels; int wFormatTag; } ;
struct TYPE_8__ {int dwChannelMask; TYPE_1__ Samples; int SubFormat; TYPE_2__ Format; } ;
typedef TYPE_3__ WAVEFORMATEXTENSIBLE ;
typedef int WAVEFORMATEX ;
typedef int DWORD ;


 int WAVE_FORMAT_EXTENSIBLE ;
 int * format_to_subtype (int ) ;
 int mp_chmap_to_waveext (struct mp_chmap*) ;
 int update_waveformat_datarate (TYPE_3__*) ;

__attribute__((used)) static void set_waveformat(WAVEFORMATEXTENSIBLE *wformat,
                           struct wasapi_sample_fmt *format,
                           DWORD samplerate, struct mp_chmap *channels)
{
    wformat->Format.wFormatTag = WAVE_FORMAT_EXTENSIBLE;
    wformat->Format.nChannels = channels->num;
    wformat->Format.nSamplesPerSec = samplerate;
    wformat->Format.wBitsPerSample = format->bits;
    wformat->Format.cbSize = sizeof(WAVEFORMATEXTENSIBLE) - sizeof(WAVEFORMATEX);

    wformat->SubFormat = *format_to_subtype(format->mp_format);
    wformat->Samples.wValidBitsPerSample = format->used_msb;
    wformat->dwChannelMask = mp_chmap_to_waveext(channels);
    update_waveformat_datarate(wformat);
}
