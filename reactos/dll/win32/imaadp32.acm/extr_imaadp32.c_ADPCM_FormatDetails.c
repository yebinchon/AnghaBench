
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int wFormatTag; int nChannels; int nSamplesPerSec; int wBitsPerSample; int nBlockAlign; int nAvgBytesPerSec; } ;
struct TYPE_8__ {int nChannels; int rate; int nBits; } ;
struct TYPE_7__ {int dwFormatTag; size_t dwFormatIndex; scalar_t__* szFormat; int fdwSupport; TYPE_4__* pwfx; } ;
typedef TYPE_1__* PACMFORMATDETAILSW ;
typedef int LRESULT ;
typedef int IMAADPCMWAVEFORMAT ;
typedef int DWORD ;


 int ACMDRIVERDETAILS_SUPPORTF_CODEC ;
 int ACMERR_NOTPOSSIBLE ;


 TYPE_2__* ADPCM_Formats ;
 int ADPCM_GetFormatIndex (TYPE_4__*) ;
 size_t ARRAY_SIZE (TYPE_2__*) ;
 int MMSYSERR_INVALPARAM ;
 int MMSYSERR_NOERROR ;
 int MMSYSERR_NOTSUPPORTED ;
 TYPE_2__* PCM_Formats ;
 int WARN (char*,int) ;


 int init_wfx_ima_adpcm (int *) ;

__attribute__((used)) static LRESULT ADPCM_FormatDetails(PACMFORMATDETAILSW afd, DWORD dwQuery)
{
    switch (dwQuery)
    {
    case 131:
 if (ADPCM_GetFormatIndex(afd->pwfx) == 0xFFFFFFFF) return ACMERR_NOTPOSSIBLE;
 break;
    case 130:
 afd->pwfx->wFormatTag = afd->dwFormatTag;
 switch (afd->dwFormatTag)
        {
 case 128:
     if (afd->dwFormatIndex >= ARRAY_SIZE(PCM_Formats)) return ACMERR_NOTPOSSIBLE;
     afd->pwfx->nChannels = PCM_Formats[afd->dwFormatIndex].nChannels;
     afd->pwfx->nSamplesPerSec = PCM_Formats[afd->dwFormatIndex].rate;
     afd->pwfx->wBitsPerSample = PCM_Formats[afd->dwFormatIndex].nBits;



     afd->pwfx->nBlockAlign =
  (afd->pwfx->nChannels * afd->pwfx->wBitsPerSample) / 8;
     afd->pwfx->nAvgBytesPerSec =
  afd->pwfx->nSamplesPerSec * afd->pwfx->nBlockAlign;
     break;
 case 129:
     if (afd->dwFormatIndex >= ARRAY_SIZE(ADPCM_Formats)) return ACMERR_NOTPOSSIBLE;
     afd->pwfx->nChannels = ADPCM_Formats[afd->dwFormatIndex].nChannels;
     afd->pwfx->nSamplesPerSec = ADPCM_Formats[afd->dwFormatIndex].rate;
     afd->pwfx->wBitsPerSample = ADPCM_Formats[afd->dwFormatIndex].nBits;
     init_wfx_ima_adpcm((IMAADPCMWAVEFORMAT *)afd->pwfx);
     break;
 default:
            WARN("Unsupported tag %08x\n", afd->dwFormatTag);
     return MMSYSERR_INVALPARAM;
 }
 break;
    default:
 WARN("Unsupported query %08x\n", dwQuery);
 return MMSYSERR_NOTSUPPORTED;
    }
    afd->fdwSupport = ACMDRIVERDETAILS_SUPPORTF_CODEC;
    afd->szFormat[0] = 0;

    return MMSYSERR_NOERROR;
}
