
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


struct TYPE_19__ {int nChannels; int nSamplesPerSec; int nAvgBytesPerSec; int nBlockAlign; int cbSize; int wFormatTag; scalar_t__ wBitsPerSample; } ;
typedef TYPE_3__ WAVEFORMATEX ;
struct TYPE_16__ {int Data1; } ;
struct TYPE_24__ {int cbFormat; TYPE_14__ subtype; struct TYPE_24__* pbFormat; scalar_t__ bTemporalCompression; int bFixedSizeSamples; scalar_t__ lSampleSize; int majortype; int formattype; } ;
struct TYPE_23__ {int dwHeadBitrate; int fwHeadModeExt; int wHeadEmphasis; int fwHeadFlags; int fwHeadMode; int fwHeadLayer; } ;
struct TYPE_22__ {int nBlockSize; int nFramesPerBlock; int nCodecDelay; int fdwFlags; int wID; } ;
struct TYPE_17__ {int IBaseFilter_iface; } ;
struct TYPE_18__ {TYPE_1__ filter; } ;
struct TYPE_21__ {TYPE_2__ Parser; } ;
struct TYPE_20__ {int achName; int * pFilter; int dir; } ;
typedef TYPE_4__ PIN_INFO ;
typedef TYPE_5__ MPEGSplitterImpl ;
typedef TYPE_6__ MPEGLAYER3WAVEFORMAT ;
typedef TYPE_7__ MPEG1WAVEFORMAT ;
typedef int HRESULT ;
typedef int BYTE ;
typedef TYPE_8__ AM_MEDIA_TYPE ;


 int ACM_MPEG_DUALCHANNEL ;
 int ACM_MPEG_ID_MPEG1 ;
 int ACM_MPEG_JOINTSTEREO ;
 int ACM_MPEG_LAYER1 ;
 int ACM_MPEG_LAYER2 ;
 int ACM_MPEG_LAYER3 ;
 int ACM_MPEG_SINGLECHANNEL ;
 int ACM_MPEG_STEREO ;
 TYPE_8__* CoTaskMemAlloc (int) ;
 int E_OUTOFMEMORY ;
 int FALSE ;
 int FIXME (char*) ;
 int FORMAT_WaveFormatEx ;
 TYPE_14__ MEDIASUBTYPE_MPEG1AudioPayload ;
 int MEDIATYPE_Audio ;
 int MPEGLAYER3_FLAG_PADDING_ON ;
 int MPEGLAYER3_ID_MPEG ;
 int MPEGLAYER3_WFX_EXTRA_BYTES ;
 int PINDIR_OUTPUT ;
 int S_OK ;
 int TRACE (char*,int,int ,int,int,int,int) ;
 int WAVE_FORMAT_MPEG ;
 int WAVE_FORMAT_MPEGLAYER3 ;
 int ZeroMemory (TYPE_8__*,int) ;
 int dump_AM_MEDIA_TYPE (TYPE_8__*) ;
 int* freqs ;
 int*** tabsel_123 ;
 int wsprintfW (int ,int ) ;
 int wszAudioStream ;

__attribute__((used)) static HRESULT MPEGSplitter_init_audio(MPEGSplitterImpl *This, const BYTE *header, PIN_INFO *ppiOutput, AM_MEDIA_TYPE *pamt)
{
    WAVEFORMATEX *format;
    int bitrate_index;
    int freq_index;
    int mode_ext;
    int emphasis;
    int padding;
    int lsf = 1;
    int mpeg1;
    int layer;
    int mode;

    ZeroMemory(pamt, sizeof(*pamt));
    ppiOutput->dir = PINDIR_OUTPUT;
    ppiOutput->pFilter = &This->Parser.filter.IBaseFilter_iface;
    wsprintfW(ppiOutput->achName, wszAudioStream);

    pamt->formattype = FORMAT_WaveFormatEx;
    pamt->majortype = MEDIATYPE_Audio;
    pamt->subtype = MEDIASUBTYPE_MPEG1AudioPayload;

    pamt->lSampleSize = 0;
    pamt->bFixedSizeSamples = FALSE;
    pamt->bTemporalCompression = 0;

    mpeg1 = (header[1]>>4)&0x1;
    if (mpeg1)
        lsf = ((header[1]>>3)&0x1)^1;

    layer = 4-((header[1]>>1)&0x3);
    bitrate_index = ((header[2]>>4)&0xf);
    padding = ((header[2]>>1)&0x1);
    freq_index = ((header[2]>>2)&0x3) + (mpeg1?(lsf*3):6);
    mode = ((header[3]>>6)&0x3);
    mode_ext = ((header[3]>>4)&0x3);
    emphasis = ((header[3]>>0)&0x3);

    if (!bitrate_index)
    {

        FIXME("Variable-bitrate audio not fully supported.\n");
        bitrate_index = 15;
    }

    pamt->cbFormat = ((layer==3)? sizeof(MPEGLAYER3WAVEFORMAT) :
                                  sizeof(MPEG1WAVEFORMAT));
    pamt->pbFormat = CoTaskMemAlloc(pamt->cbFormat);
    if (!pamt->pbFormat)
        return E_OUTOFMEMORY;
    ZeroMemory(pamt->pbFormat, pamt->cbFormat);
    format = (WAVEFORMATEX*)pamt->pbFormat;

    format->wFormatTag = ((layer == 3) ? WAVE_FORMAT_MPEGLAYER3 :
                                              WAVE_FORMAT_MPEG);
    format->nChannels = ((mode == 3) ? 1 : 2);
    format->nSamplesPerSec = freqs[freq_index];
    format->nAvgBytesPerSec = tabsel_123[lsf][layer-1][bitrate_index] * 1000 / 8;

    if (layer == 3)
        format->nBlockAlign = format->nAvgBytesPerSec * 8 * 144 /
                              (format->nSamplesPerSec<<lsf) + padding;
    else if (layer == 2)
        format->nBlockAlign = format->nAvgBytesPerSec * 8 * 144 /
                              format->nSamplesPerSec + padding;
    else
        format->nBlockAlign = 4 * (format->nAvgBytesPerSec * 8 * 12 / format->nSamplesPerSec + padding);

    format->wBitsPerSample = 0;

    if (layer == 3)
    {
        MPEGLAYER3WAVEFORMAT *mp3format = (MPEGLAYER3WAVEFORMAT*)format;

        format->cbSize = MPEGLAYER3_WFX_EXTRA_BYTES;

        mp3format->wID = MPEGLAYER3_ID_MPEG;
        mp3format->fdwFlags = MPEGLAYER3_FLAG_PADDING_ON;
        mp3format->nBlockSize = format->nBlockAlign;
        mp3format->nFramesPerBlock = 1;






        mp3format->nCodecDelay = 1393;
    }
    else
    {
        MPEG1WAVEFORMAT *mpgformat = (MPEG1WAVEFORMAT*)format;

        format->cbSize = 22;

        mpgformat->fwHeadLayer = ((layer == 1) ? ACM_MPEG_LAYER1 :
                                    ((layer == 2) ? ACM_MPEG_LAYER2 :
                                     ACM_MPEG_LAYER3));
        mpgformat->dwHeadBitrate = format->nAvgBytesPerSec * 8;
        mpgformat->fwHeadMode = ((mode == 3) ? ACM_MPEG_SINGLECHANNEL :
                                    ((mode == 2) ? ACM_MPEG_DUALCHANNEL :
                                     ((mode == 1) ? ACM_MPEG_JOINTSTEREO :
                                      ACM_MPEG_STEREO)));
        mpgformat->fwHeadModeExt = ((mode == 1) ? 0x0F : (1<<mode_ext));
        mpgformat->wHeadEmphasis = emphasis + 1;
        mpgformat->fwHeadFlags = ACM_MPEG_ID_MPEG1;
    }
    pamt->subtype.Data1 = format->wFormatTag;

    TRACE("MPEG audio stream detected:\n"
          "\tLayer %d (%#x)\n"
          "\tFrequency: %d\n"
          "\tChannels: %d (%d)\n"
          "\tBytesPerSec: %d\n",
          layer, format->wFormatTag, format->nSamplesPerSec,
          format->nChannels, mode, format->nAvgBytesPerSec);

    dump_AM_MEDIA_TYPE(pamt);

    return S_OK;
}
