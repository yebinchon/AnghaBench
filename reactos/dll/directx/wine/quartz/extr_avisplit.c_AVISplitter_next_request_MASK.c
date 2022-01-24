#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_17__ {scalar_t__ qwBaseOffset; size_t nEntriesInUse; TYPE_7__* aIndex; } ;
struct TYPE_16__ {unsigned int dwSize; scalar_t__ dwOffset; } ;
struct TYPE_10__ {TYPE_5__* pInputPin; } ;
struct TYPE_15__ {int offset; TYPE_3__* oldindex; TYPE_1__ Parser; TYPE_4__* streams; } ;
struct TYPE_14__ {int /*<<< orphan*/  pReader; int /*<<< orphan*/  pAlloc; } ;
struct TYPE_13__ {size_t pos; size_t pos_next; size_t index; size_t index_next; size_t entries; int /*<<< orphan*/  packet_queued; int /*<<< orphan*/ * sample; TYPE_8__** stdindex; scalar_t__ preroll; int /*<<< orphan*/  seek; } ;
struct TYPE_12__ {int cb; TYPE_2__* aIndex; } ;
struct TYPE_11__ {int dwFlags; int dwSize; int dwOffset; int /*<<< orphan*/  dwChunkId; } ;
typedef  TYPE_4__ StreamData ;
typedef  int /*<<< orphan*/  RIFFLIST ;
typedef  int /*<<< orphan*/  RIFFCHUNK ;
typedef  TYPE_5__ PullPin ;
typedef  scalar_t__ LONGLONG ;
typedef  int /*<<< orphan*/  IMediaSample ;
typedef  int HRESULT ;
typedef  int DWORD ;
typedef  TYPE_6__ AVISplitterImpl ;
typedef  TYPE_7__ AVISTDINDEX_ENTRY ;
typedef  TYPE_8__ AVISTDINDEX ;

/* Variables and functions */
 int AVIIF_LIST ; 
 int AVIIF_MIDPART ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 int S_FALSE ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC17 (int) ; 

__attribute__((used)) static HRESULT FUNC18(AVISplitterImpl *This, DWORD streamnumber)
{
    StreamData *stream = This->streams + streamnumber;
    PullPin *pin = This->Parser.pInputPin;
    IMediaSample *sample = NULL;
    HRESULT hr;
    ULONG ref;

    FUNC16("(%p, %u)->()\n", This, streamnumber);

    hr = FUNC11(pin->pAlloc, &sample, NULL, NULL, 0);
    if (hr != S_OK)
        FUNC1("... %08x?\n", hr);

    if (FUNC13(hr))
    {
        LONGLONG rtSampleStart;
        /* Add 4 for the next header, which should hopefully work */
        LONGLONG rtSampleStop;

        stream->pos = stream->pos_next;
        stream->index = stream->index_next;

        FUNC7(sample, stream->seek);
        stream->seek = FALSE;
        if (stream->preroll)
        {
            --stream->preroll;
            FUNC8(sample, TRUE);
        }
        else
            FUNC8(sample, FALSE);
        FUNC9(sample, TRUE);

        if (stream->stdindex)
        {
            AVISTDINDEX *index = stream->stdindex[stream->index];
            AVISTDINDEX_ENTRY *entry = &index->aIndex[stream->pos];

            /* End of file */
            if (stream->index >= stream->entries)
            {
                FUNC16("END OF STREAM ON %u\n", streamnumber);
                FUNC5(sample);
                return S_FALSE;
            }

            rtSampleStart = index->qwBaseOffset;
            rtSampleStart += entry->dwOffset;
            rtSampleStart = FUNC12(rtSampleStart);

            ++stream->pos_next;
            if (index->nEntriesInUse == stream->pos_next)
            {
                stream->pos_next = 0;
                ++stream->index_next;
            }

            rtSampleStop = rtSampleStart + FUNC12(entry->dwSize & ~(1u << 31));

            FUNC16("offset(%u) size(%u)\n", (DWORD)FUNC0(rtSampleStart), (DWORD)FUNC0(rtSampleStop - rtSampleStart));
        }
        else if (This->oldindex)
        {
            DWORD flags = This->oldindex->aIndex[stream->pos].dwFlags;
            DWORD size = This->oldindex->aIndex[stream->pos].dwSize;

            /* End of file */
            if (stream->index)
            {
                FUNC16("END OF STREAM ON %u\n", streamnumber);
                FUNC5(sample);
                return S_FALSE;
            }

            rtSampleStart = FUNC12(This->offset);
            rtSampleStart += FUNC12(This->oldindex->aIndex[stream->pos].dwOffset);
            rtSampleStop = rtSampleStart + FUNC12(size);
            if (flags & AVIIF_MIDPART)
            {
                FUNC3("Only stand alone frames are currently handled correctly!\n");
            }
            if (flags & AVIIF_LIST)
            {
                FUNC3("Not sure if this is handled correctly\n");
                rtSampleStart += FUNC12(sizeof(RIFFLIST));
                rtSampleStop += FUNC12(sizeof(RIFFLIST));
            }
            else
            {
                rtSampleStart += FUNC12(sizeof(RIFFCHUNK));
                rtSampleStop += FUNC12(sizeof(RIFFCHUNK));
            }

            /* Slow way of finding next index */
            do {
                stream->pos_next++;
            } while (stream->pos_next * sizeof(This->oldindex->aIndex[0]) < This->oldindex->cb
                     && FUNC15(This->oldindex->aIndex[stream->pos_next].dwChunkId) != streamnumber);

            /* End of file soon */
            if (stream->pos_next * sizeof(This->oldindex->aIndex[0]) >= This->oldindex->cb)
            {
                stream->pos_next = 0;
                ++stream->index_next;
            }
        }
        else /* TODO: Generate an index automagically */
        {
            FUNC1("CAN'T PLAY WITHOUT AN INDEX! SOS! SOS! SOS!\n");
            FUNC17(0);
        }

        if (rtSampleStart != rtSampleStop)
        {
            FUNC10(sample, &rtSampleStart, &rtSampleStop);
            hr = FUNC4(pin->pReader, sample, streamnumber);

            if (FUNC2(hr))
            {
                ref = FUNC5(sample);
                FUNC17(ref == 0);
            }
        }
        else
        {
            stream->sample = sample;
            FUNC6(sample, 0);
            FUNC14(stream->packet_queued);
        }
    }
    else
    {
        if (sample)
        {
            FUNC1("There should be no sample!\n");
            ref = FUNC5(sample);
            FUNC17(ref == 0);
        }
    }
    FUNC16("--> %08x\n", hr);

    return hr;
}