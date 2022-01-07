
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_5__ {scalar_t__ wFormatTag; int nSamplesPerSec; int nBlockAlign; int nChannels; int cbSize; int nAvgBytesPerSec; } ;
typedef TYPE_1__ WAVEFORMATEX ;
struct TYPE_6__ {int wSamplesPerBlock; TYPE_1__ wfx; } ;
typedef TYPE_2__ IMAADPCMWAVEFORMAT ;


 int ADPCM_GetFormatIndex (TYPE_1__*) ;
 int FIXME (char*) ;
 scalar_t__ WAVE_FORMAT_IMA_ADPCM ;

__attribute__((used)) static void init_wfx_ima_adpcm(IMAADPCMWAVEFORMAT* awfx )
{
    WAVEFORMATEX* pwfx = &awfx->wfx;




    if (pwfx->wFormatTag != WAVE_FORMAT_IMA_ADPCM) {FIXME("wrong FT\n"); return;}
    if (ADPCM_GetFormatIndex(pwfx) == 0xFFFFFFFF) {FIXME("wrong fmt\n"); return;}

    switch (pwfx->nSamplesPerSec)
    {
    case 8000: pwfx->nBlockAlign = 256 * pwfx->nChannels; break;
    case 11025: pwfx->nBlockAlign = 256 * pwfx->nChannels; break;
    case 22050: pwfx->nBlockAlign = 512 * pwfx->nChannels; break;
    case 44100: pwfx->nBlockAlign = 1024 * pwfx->nChannels; break;
    default: break;
    }
    pwfx->cbSize = sizeof(WORD);

    awfx->wSamplesPerBlock = (pwfx->nBlockAlign - (4 * pwfx->nChannels)) * (2 / pwfx->nChannels) + 1;
    pwfx->nAvgBytesPerSec = (pwfx->nSamplesPerSec * pwfx->nBlockAlign) / awfx->wSamplesPerBlock;
}
