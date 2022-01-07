
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;


struct TYPE_22__ {int nBlockAlign; int nAvgBytesPerSec; } ;
typedef TYPE_5__ WAVEFORMATEX ;
typedef int UINT ;
struct TYPE_26__ {int cbAlign; int cbBuffer; int cBuffers; int cbPrefix; } ;
struct TYPE_25__ {scalar_t__ pbFormat; } ;
struct TYPE_19__ {int llDuration; int llStop; int llCurrent; } ;
struct TYPE_17__ {TYPE_2__ sourceSeeking; TYPE_1__* pInputPin; } ;
struct TYPE_24__ {int EndOfFile; int begin_offset; scalar_t__ position; TYPE_11__ Parser; int header; } ;
struct TYPE_20__ {scalar_t__ pFilter; } ;
struct TYPE_21__ {TYPE_3__ pinInfo; } ;
struct TYPE_23__ {int pReader; TYPE_4__ pin; } ;
struct TYPE_18__ {void* rtCurrent; void* rtStart; void* rtStop; } ;
typedef TYPE_6__ PullPin ;
typedef int PIN_INFO ;
typedef TYPE_7__ MPEGSplitterImpl ;
typedef int LONGLONG ;
typedef int IPin ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;
typedef TYPE_8__ AM_MEDIA_TYPE ;
typedef TYPE_9__ ALLOCATOR_PROPERTIES ;


 int CoTaskMemFree (scalar_t__) ;
 int ERR (char*,int ) ;
 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int IAsyncReader_Length (int ,int*,int*) ;
 int IAsyncReader_SyncRead (int ,int,int,int*) ;
 void* MEDIATIME_FROM_BYTES (int) ;
 int MPEGSplitter_head_check (int*) ;
 int MPEGSplitter_init_audio (TYPE_7__*,int*,int *,TYPE_8__*) ;



 int Parser_AddPin (TYPE_11__*,int *,TYPE_9__*,TYPE_8__*) ;
 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ S_OK ;
 int TRACE (char*,int,...) ;
 TYPE_6__* impl_PullPin_from_IPin (int *) ;
 int memcmp (char*,int*,int) ;
 int memcpy (int ,int*,int) ;
 int memmove (int*,int*,int) ;
 scalar_t__ parse_header (int*,int*,int *) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static HRESULT MPEGSplitter_pre_connect(IPin *iface, IPin *pConnectPin, ALLOCATOR_PROPERTIES *props)
{
    PullPin *pPin = impl_PullPin_from_IPin(iface);
    MPEGSplitterImpl *This = (MPEGSplitterImpl*)pPin->pin.pinInfo.pFilter;
    HRESULT hr;
    LONGLONG pos = 0;
    BYTE header[10];
    int streamtype;
    LONGLONG total, avail;
    AM_MEDIA_TYPE amt;
    PIN_INFO piOutput;

    IAsyncReader_Length(pPin->pReader, &total, &avail);
    This->EndOfFile = total;

    hr = IAsyncReader_SyncRead(pPin->pReader, pos, 4, header);
    if (SUCCEEDED(hr))
        pos += 4;


    if (SUCCEEDED(hr) && !memcmp("ID3", header, 3))
    do {
        UINT length = 0;
        hr = IAsyncReader_SyncRead(pPin->pReader, pos, 6, header + 4);
        if (FAILED(hr))
            break;
        pos += 6;
        TRACE("Found ID3 v2.%d.%d\n", header[3], header[4]);
        if(header[3] <= 4 && header[4] != 0xff &&
           (header[5]&0x0f) == 0 && (header[6]&0x80) == 0 &&
           (header[7]&0x80) == 0 && (header[8]&0x80) == 0 &&
           (header[9]&0x80) == 0)
        {
            length = (header[6]<<21) | (header[7]<<14) |
                     (header[8]<< 7) | (header[9] );
            if((header[5]&0x10))
                length += 10;
            TRACE("Length: %u\n", length);
        }
        pos += length;


        hr = IAsyncReader_SyncRead(pPin->pReader, pos, 4, header);
        if (SUCCEEDED(hr))
            pos += 4;
    } while (0);

    while(SUCCEEDED(hr))
    {
        TRACE("Testing header %x:%x:%x:%x\n", header[0], header[1], header[2], header[3]);

        streamtype = MPEGSplitter_head_check(header);
        if (streamtype == 130)
        {
            LONGLONG length;
            if (parse_header(header, &length, ((void*)0)) == S_OK)
            {
                BYTE next_header[4];






                hr = IAsyncReader_SyncRead(pPin->pReader, pos + length - 4, 4, next_header);
                if (FAILED(hr))
                    break;
                if (parse_header(next_header, &length, ((void*)0)) == S_OK)
                    break;
                TRACE("%x:%x:%x:%x is a fake audio header, looking for next...\n",
                      header[0], header[1], header[2], header[3]);
            }
        }
        else if (streamtype)
            break;


        memmove(header, header+1, 3);
        hr = IAsyncReader_SyncRead(pPin->pReader, pos++, 1, header + 3);
    }
    if (FAILED(hr))
        return hr;
    pos -= 4;
    This->begin_offset = pos;
    memcpy(This->header, header, 4);

    switch(streamtype)
    {
        case 130:
        {
            LONGLONG duration = 0;
            WAVEFORMATEX *format;

            hr = MPEGSplitter_init_audio(This, header, &piOutput, &amt);
            if (SUCCEEDED(hr))
            {
                format = (WAVEFORMATEX*)amt.pbFormat;

                props->cbAlign = 1;
                props->cbPrefix = 0;

                props->cbBuffer = 0x4000 / format->nBlockAlign *
                                 format->nBlockAlign;
                props->cBuffers = 3;
                hr = Parser_AddPin(&(This->Parser), &piOutput, props, &amt);
            }

            if (FAILED(hr))
            {
                CoTaskMemFree(amt.pbFormat);
                ERR("Could not create pin for MPEG audio stream (%x)\n", hr);
                break;
            }


            hr = IAsyncReader_SyncRead(pPin->pReader, This->EndOfFile-128, 3, header);
            if (FAILED(hr))
                break;
            if (!strncmp((char*)header, "TAG", 3))
                This->EndOfFile -= 128;
            This->Parser.pInputPin->rtStop = MEDIATIME_FROM_BYTES(This->EndOfFile);
            This->Parser.pInputPin->rtStart = This->Parser.pInputPin->rtCurrent = MEDIATIME_FROM_BYTES(This->begin_offset);

            duration = (This->EndOfFile-This->begin_offset) * 10000000 / format->nAvgBytesPerSec;
            TRACE("Duration: %d seconds\n", (DWORD)(duration / 10000000));

            This->Parser.sourceSeeking.llCurrent = 0;
            This->Parser.sourceSeeking.llDuration = duration;
            This->Parser.sourceSeeking.llStop = duration;
            break;
        }
        case 128:
            FIXME("MPEG video processing not yet supported!\n");
            hr = E_FAIL;
            break;
        case 129:
            FIXME("MPEG system streams not yet supported!\n");
            hr = E_FAIL;
            break;

        default:
            break;
    }
    This->position = 0;

    return hr;
}
