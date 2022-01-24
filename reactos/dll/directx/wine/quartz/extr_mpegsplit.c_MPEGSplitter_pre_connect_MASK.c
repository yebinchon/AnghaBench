#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
struct TYPE_22__ {int nBlockAlign; int nAvgBytesPerSec; } ;
typedef  TYPE_5__ WAVEFORMATEX ;
typedef  int UINT ;
struct TYPE_26__ {int cbAlign; int cbBuffer; int cBuffers; int /*<<< orphan*/  cbPrefix; } ;
struct TYPE_25__ {scalar_t__ pbFormat; } ;
struct TYPE_19__ {int llDuration; int llStop; int /*<<< orphan*/  llCurrent; } ;
struct TYPE_17__ {TYPE_2__ sourceSeeking; TYPE_1__* pInputPin; } ;
struct TYPE_24__ {int EndOfFile; int begin_offset; scalar_t__ position; TYPE_11__ Parser; int /*<<< orphan*/  header; } ;
struct TYPE_20__ {scalar_t__ pFilter; } ;
struct TYPE_21__ {TYPE_3__ pinInfo; } ;
struct TYPE_23__ {int /*<<< orphan*/  pReader; TYPE_4__ pin; } ;
struct TYPE_18__ {void* rtCurrent; void* rtStart; void* rtStop; } ;
typedef  TYPE_6__ PullPin ;
typedef  int /*<<< orphan*/  PIN_INFO ;
typedef  TYPE_7__ MPEGSplitterImpl ;
typedef  int LONGLONG ;
typedef  int /*<<< orphan*/  IPin ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int BYTE ;
typedef  TYPE_8__ AM_MEDIA_TYPE ;
typedef  TYPE_9__ ALLOCATOR_PROPERTIES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int*) ; 
 void* FUNC6 (int) ; 
 int FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int*,int /*<<< orphan*/ *,TYPE_8__*) ; 
#define  MPEG_AUDIO_HEADER 130 
#define  MPEG_SYSTEM_HEADER 129 
#define  MPEG_VIDEO_HEADER 128 
 int /*<<< orphan*/  FUNC9 (TYPE_11__*,int /*<<< orphan*/ *,TYPE_9__*,TYPE_8__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC11 (char*,int,...) ; 
 TYPE_6__* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC15 (int*,int*,int) ; 
 scalar_t__ FUNC16 (int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int) ; 

__attribute__((used)) static HRESULT FUNC18(IPin *iface, IPin *pConnectPin, ALLOCATOR_PROPERTIES *props)
{
    PullPin *pPin = FUNC12(iface);
    MPEGSplitterImpl *This = (MPEGSplitterImpl*)pPin->pin.pinInfo.pFilter;
    HRESULT hr;
    LONGLONG pos = 0; /* in bytes */
    BYTE header[10];
    int streamtype;
    LONGLONG total, avail;
    AM_MEDIA_TYPE amt;
    PIN_INFO piOutput;

    FUNC4(pPin->pReader, &total, &avail);
    This->EndOfFile = total;

    hr = FUNC5(pPin->pReader, pos, 4, header);
    if (FUNC10(hr))
        pos += 4;

    /* Skip ID3 v2 tag, if any */
    if (FUNC10(hr) && !FUNC13("ID3", header, 3))
    do {
        UINT length = 0;
        hr = FUNC5(pPin->pReader, pos, 6, header + 4);
        if (FUNC2(hr))
            break;
        pos += 6;
        FUNC11("Found ID3 v2.%d.%d\n", header[3], header[4]);
        if(header[3] <= 4 && header[4] != 0xff &&
           (header[5]&0x0f) == 0 && (header[6]&0x80) == 0 &&
           (header[7]&0x80) == 0 && (header[8]&0x80) == 0 &&
           (header[9]&0x80) == 0)
        {
            length = (header[6]<<21) | (header[7]<<14) |
                     (header[8]<< 7) | (header[9]    );
            if((header[5]&0x10))
                length += 10;
            FUNC11("Length: %u\n", length);
        }
        pos += length;

        /* Read the real header for the mpeg splitter */
        hr = FUNC5(pPin->pReader, pos, 4, header);
        if (FUNC10(hr))
            pos += 4;
    } while (0);

    while(FUNC10(hr))
    {
        FUNC11("Testing header %x:%x:%x:%x\n", header[0], header[1], header[2], header[3]);

        streamtype = FUNC7(header);
        if (streamtype == MPEG_AUDIO_HEADER)
        {
            LONGLONG length;
            if (FUNC16(header, &length, NULL) == S_OK)
            {
                BYTE next_header[4];
                /* Ensure we have a valid header by seeking for the next frame, some bad
                 * encoded ID3v2 may have an incorrect length and we end up finding bytes
                 * like FF FE 00 28 which are nothing more than a Unicode BOM followed by
                 * ')' character from inside a ID3v2 tag. Unfortunately that sequence
                 * matches like a valid mpeg audio header.
                 */
                hr = FUNC5(pPin->pReader, pos + length - 4, 4, next_header);
                if (FUNC2(hr))
                    break;
                if (FUNC16(next_header, &length, NULL) == S_OK)
                    break;
                FUNC11("%x:%x:%x:%x is a fake audio header, looking for next...\n",
                      header[0], header[1], header[2], header[3]);
            }
        }
        else if (streamtype) /* Video or System stream */
            break;

        /* No valid header yet; shift by a byte and check again */
        FUNC15(header, header+1, 3);
        hr = FUNC5(pPin->pReader, pos++, 1, header + 3);
    }
    if (FUNC2(hr))
        return hr;
    pos -= 4;
    This->begin_offset = pos;
    FUNC14(This->header, header, 4);

    switch(streamtype)
    {
        case MPEG_AUDIO_HEADER:
        {
            LONGLONG duration = 0;
            WAVEFORMATEX *format;

            hr = FUNC8(This, header, &piOutput, &amt);
            if (FUNC10(hr))
            {
                format = (WAVEFORMATEX*)amt.pbFormat;

                props->cbAlign = 1;
                props->cbPrefix = 0;
                /* Make the output buffer a multiple of the frame size */
                props->cbBuffer = 0x4000 / format->nBlockAlign *
                                 format->nBlockAlign;
                props->cBuffers = 3;
                hr = FUNC9(&(This->Parser), &piOutput, props, &amt);
            }

            if (FUNC2(hr))
            {
                FUNC0(amt.pbFormat);
                FUNC1("Could not create pin for MPEG audio stream (%x)\n", hr);
                break;
            }

            /* Check for idv1 tag, and remove it from stream if found */
            hr = FUNC5(pPin->pReader, This->EndOfFile-128, 3, header);
            if (FUNC2(hr))
                break;
            if (!FUNC17((char*)header, "TAG", 3))
                This->EndOfFile -= 128;
            This->Parser.pInputPin->rtStop = FUNC6(This->EndOfFile);
            This->Parser.pInputPin->rtStart = This->Parser.pInputPin->rtCurrent = FUNC6(This->begin_offset);

            duration = (This->EndOfFile-This->begin_offset) * 10000000 / format->nAvgBytesPerSec;
            FUNC11("Duration: %d seconds\n", (DWORD)(duration / 10000000));

            This->Parser.sourceSeeking.llCurrent = 0;
            This->Parser.sourceSeeking.llDuration = duration;
            This->Parser.sourceSeeking.llStop = duration;
            break;
        }
        case MPEG_VIDEO_HEADER:
            FUNC3("MPEG video processing not yet supported!\n");
            hr = E_FAIL;
            break;
        case MPEG_SYSTEM_HEADER:
            FUNC3("MPEG system streams not yet supported!\n");
            hr = E_FAIL;
            break;

        default:
            break;
    }
    This->position = 0;

    return hr;
}