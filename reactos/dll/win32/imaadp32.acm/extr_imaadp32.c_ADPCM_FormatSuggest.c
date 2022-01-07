
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ wFormatTag; int nChannels; int nSamplesPerSec; int wBitsPerSample; int nBlockAlign; int nAvgBytesPerSec; } ;
struct TYPE_7__ {int wSamplesPerBlock; } ;
struct TYPE_6__ {int cbwfxSrc; int cbwfxDst; int fdwSuggest; TYPE_4__* pwfxDst; TYPE_4__* pwfxSrc; } ;
typedef int PCMWAVEFORMAT ;
typedef TYPE_1__* PACMDRVFORMATSUGGEST ;
typedef int LRESULT ;
typedef TYPE_2__ IMAADPCMWAVEFORMAT ;


 int ACMERR_NOTPOSSIBLE ;
 int ACM_FORMATSUGGESTF_NCHANNELS ;
 int ACM_FORMATSUGGESTF_NSAMPLESPERSEC ;
 int ACM_FORMATSUGGESTF_WBITSPERSAMPLE ;
 int ACM_FORMATSUGGESTF_WFORMATTAG ;
 int ADPCM_GetFormatIndex (TYPE_4__*) ;
 int MMSYSERR_NOERROR ;
 int TRACE (char*,int ) ;


 int init_wfx_ima_adpcm (TYPE_2__*) ;

__attribute__((used)) static LRESULT ADPCM_FormatSuggest(PACMDRVFORMATSUGGEST adfs)
{

    if (adfs->cbwfxSrc < sizeof(PCMWAVEFORMAT) ||
 adfs->cbwfxDst < sizeof(PCMWAVEFORMAT) ||
 adfs->pwfxSrc->wFormatTag == adfs->pwfxDst->wFormatTag ||
 ADPCM_GetFormatIndex(adfs->pwfxSrc) == 0xFFFFFFFF) return ACMERR_NOTPOSSIBLE;


    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_NCHANNELS))
 adfs->pwfxDst->nChannels = adfs->pwfxSrc->nChannels;
    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_NSAMPLESPERSEC))
        adfs->pwfxDst->nSamplesPerSec = adfs->pwfxSrc->nSamplesPerSec;

    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_WBITSPERSAMPLE))
    {
 if (adfs->pwfxSrc->wFormatTag == 128)
            adfs->pwfxDst->wBitsPerSample = 4;
        else
            adfs->pwfxDst->wBitsPerSample = 16;
    }
    if (!(adfs->fdwSuggest & ACM_FORMATSUGGESTF_WFORMATTAG))
    {
 if (adfs->pwfxSrc->wFormatTag == 128)
            adfs->pwfxDst->wFormatTag = 129;
        else
            adfs->pwfxDst->wFormatTag = 128;
    }


    switch (adfs->pwfxDst->wFormatTag)
    {
    case 128:
        if (adfs->cbwfxSrc < sizeof(IMAADPCMWAVEFORMAT)) return ACMERR_NOTPOSSIBLE;
        adfs->pwfxDst->nBlockAlign = (adfs->pwfxDst->nChannels * adfs->pwfxDst->wBitsPerSample) / 8;
        adfs->pwfxDst->nAvgBytesPerSec = adfs->pwfxDst->nSamplesPerSec * adfs->pwfxDst->nBlockAlign;

        if (ADPCM_GetFormatIndex(adfs->pwfxDst) == 0xFFFFFFFF) return ACMERR_NOTPOSSIBLE;
        break;
    case 129:
        if (adfs->cbwfxDst < sizeof(IMAADPCMWAVEFORMAT)) return ACMERR_NOTPOSSIBLE;
        init_wfx_ima_adpcm((IMAADPCMWAVEFORMAT*)adfs->pwfxDst);

        TRACE("setting spb=%u\n", ((IMAADPCMWAVEFORMAT*)adfs->pwfxDst)->wSamplesPerBlock);

        if (ADPCM_GetFormatIndex(adfs->pwfxDst) == 0xFFFFFFFF) return ACMERR_NOTPOSSIBLE;
        break;
    default:
        return ACMERR_NOTPOSSIBLE;
    }

    return MMSYSERR_NOERROR;
}
