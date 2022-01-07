
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int wFormatTag; scalar_t__ nChannels; scalar_t__ nSamplesPerSec; scalar_t__ wBitsPerSample; int nAvgBytesPerSec; int nBlockAlign; int cbSize; } ;
typedef TYPE_1__ WAVEFORMATEX ;
struct TYPE_8__ {scalar_t__ nChannels; scalar_t__ rate; scalar_t__ nBits; } ;
typedef TYPE_2__ Format ;
typedef int DWORD ;


 TYPE_2__* ADPCM_Formats ;
 int ARRAY_SIZE (TYPE_2__*) ;
 TYPE_2__* PCM_Formats ;



__attribute__((used)) static DWORD ADPCM_GetFormatIndex(const WAVEFORMATEX *wfx)
{
    int i, hi;
    const Format* fmts;

    switch (wfx->wFormatTag)
    {
    case 128:
 hi = ARRAY_SIZE(PCM_Formats);
 fmts = PCM_Formats;
 break;
    case 129:
 hi = ARRAY_SIZE(ADPCM_Formats);
 fmts = ADPCM_Formats;
 break;
    default:
 return 0xFFFFFFFF;
    }

    for (i = 0; i < hi; i++)
    {
 if (wfx->nChannels == fmts[i].nChannels &&
     wfx->nSamplesPerSec == fmts[i].rate &&
     wfx->wBitsPerSample == fmts[i].nBits)
     return i;
    }

    switch (wfx->wFormatTag)
    {
    case 128:
 if(3 > wfx->nChannels &&
    wfx->nChannels > 0 &&
    wfx->nAvgBytesPerSec == 2 * wfx->nSamplesPerSec * wfx->nChannels &&
    wfx->nBlockAlign == 2 * wfx->nChannels &&
    wfx->wBitsPerSample == 16)
    return hi;
 break;
    case 129:
 if(3 > wfx->nChannels &&
    wfx->nChannels > 0 &&
    wfx->wBitsPerSample == 4 &&
    wfx->cbSize == 2)
    return hi;
 break;
    }

    return 0xFFFFFFFF;
}
