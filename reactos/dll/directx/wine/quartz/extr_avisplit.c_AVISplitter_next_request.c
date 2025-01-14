
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_17__ {scalar_t__ qwBaseOffset; size_t nEntriesInUse; TYPE_7__* aIndex; } ;
struct TYPE_16__ {unsigned int dwSize; scalar_t__ dwOffset; } ;
struct TYPE_10__ {TYPE_5__* pInputPin; } ;
struct TYPE_15__ {int offset; TYPE_3__* oldindex; TYPE_1__ Parser; TYPE_4__* streams; } ;
struct TYPE_14__ {int pReader; int pAlloc; } ;
struct TYPE_13__ {size_t pos; size_t pos_next; size_t index; size_t index_next; size_t entries; int packet_queued; int * sample; TYPE_8__** stdindex; scalar_t__ preroll; int seek; } ;
struct TYPE_12__ {int cb; TYPE_2__* aIndex; } ;
struct TYPE_11__ {int dwFlags; int dwSize; int dwOffset; int dwChunkId; } ;
typedef TYPE_4__ StreamData ;
typedef int RIFFLIST ;
typedef int RIFFCHUNK ;
typedef TYPE_5__ PullPin ;
typedef scalar_t__ LONGLONG ;
typedef int IMediaSample ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_6__ AVISplitterImpl ;
typedef TYPE_7__ AVISTDINDEX_ENTRY ;
typedef TYPE_8__ AVISTDINDEX ;


 int AVIIF_LIST ;
 int AVIIF_MIDPART ;
 scalar_t__ BYTES_FROM_MEDIATIME (scalar_t__) ;
 int ERR (char*,...) ;
 scalar_t__ FAILED (int) ;
 int FALSE ;
 int FIXME (char*) ;
 int IAsyncReader_Request (int ,int *,int) ;
 scalar_t__ IMediaSample_Release (int *) ;
 int IMediaSample_SetActualDataLength (int *,int ) ;
 int IMediaSample_SetDiscontinuity (int *,int ) ;
 int IMediaSample_SetPreroll (int *,int ) ;
 int IMediaSample_SetSyncPoint (int *,int ) ;
 int IMediaSample_SetTime (int *,scalar_t__*,scalar_t__*) ;
 int IMemAllocator_GetBuffer (int ,int **,int *,int *,int ) ;
 scalar_t__ MEDIATIME_FROM_BYTES (int) ;
 scalar_t__ SUCCEEDED (int) ;
 int S_FALSE ;
 int S_OK ;
 int SetEvent (int ) ;
 int StreamFromFOURCC (int ) ;
 int TRACE (char*,...) ;
 int TRUE ;
 int assert (int) ;

__attribute__((used)) static HRESULT AVISplitter_next_request(AVISplitterImpl *This, DWORD streamnumber)
{
    StreamData *stream = This->streams + streamnumber;
    PullPin *pin = This->Parser.pInputPin;
    IMediaSample *sample = ((void*)0);
    HRESULT hr;
    ULONG ref;

    TRACE("(%p, %u)->()\n", This, streamnumber);

    hr = IMemAllocator_GetBuffer(pin->pAlloc, &sample, ((void*)0), ((void*)0), 0);
    if (hr != S_OK)
        ERR("... %08x?\n", hr);

    if (SUCCEEDED(hr))
    {
        LONGLONG rtSampleStart;

        LONGLONG rtSampleStop;

        stream->pos = stream->pos_next;
        stream->index = stream->index_next;

        IMediaSample_SetDiscontinuity(sample, stream->seek);
        stream->seek = FALSE;
        if (stream->preroll)
        {
            --stream->preroll;
            IMediaSample_SetPreroll(sample, TRUE);
        }
        else
            IMediaSample_SetPreroll(sample, FALSE);
        IMediaSample_SetSyncPoint(sample, TRUE);

        if (stream->stdindex)
        {
            AVISTDINDEX *index = stream->stdindex[stream->index];
            AVISTDINDEX_ENTRY *entry = &index->aIndex[stream->pos];


            if (stream->index >= stream->entries)
            {
                TRACE("END OF STREAM ON %u\n", streamnumber);
                IMediaSample_Release(sample);
                return S_FALSE;
            }

            rtSampleStart = index->qwBaseOffset;
            rtSampleStart += entry->dwOffset;
            rtSampleStart = MEDIATIME_FROM_BYTES(rtSampleStart);

            ++stream->pos_next;
            if (index->nEntriesInUse == stream->pos_next)
            {
                stream->pos_next = 0;
                ++stream->index_next;
            }

            rtSampleStop = rtSampleStart + MEDIATIME_FROM_BYTES(entry->dwSize & ~(1u << 31));

            TRACE("offset(%u) size(%u)\n", (DWORD)BYTES_FROM_MEDIATIME(rtSampleStart), (DWORD)BYTES_FROM_MEDIATIME(rtSampleStop - rtSampleStart));
        }
        else if (This->oldindex)
        {
            DWORD flags = This->oldindex->aIndex[stream->pos].dwFlags;
            DWORD size = This->oldindex->aIndex[stream->pos].dwSize;


            if (stream->index)
            {
                TRACE("END OF STREAM ON %u\n", streamnumber);
                IMediaSample_Release(sample);
                return S_FALSE;
            }

            rtSampleStart = MEDIATIME_FROM_BYTES(This->offset);
            rtSampleStart += MEDIATIME_FROM_BYTES(This->oldindex->aIndex[stream->pos].dwOffset);
            rtSampleStop = rtSampleStart + MEDIATIME_FROM_BYTES(size);
            if (flags & AVIIF_MIDPART)
            {
                FIXME("Only stand alone frames are currently handled correctly!\n");
            }
            if (flags & AVIIF_LIST)
            {
                FIXME("Not sure if this is handled correctly\n");
                rtSampleStart += MEDIATIME_FROM_BYTES(sizeof(RIFFLIST));
                rtSampleStop += MEDIATIME_FROM_BYTES(sizeof(RIFFLIST));
            }
            else
            {
                rtSampleStart += MEDIATIME_FROM_BYTES(sizeof(RIFFCHUNK));
                rtSampleStop += MEDIATIME_FROM_BYTES(sizeof(RIFFCHUNK));
            }


            do {
                stream->pos_next++;
            } while (stream->pos_next * sizeof(This->oldindex->aIndex[0]) < This->oldindex->cb
                     && StreamFromFOURCC(This->oldindex->aIndex[stream->pos_next].dwChunkId) != streamnumber);


            if (stream->pos_next * sizeof(This->oldindex->aIndex[0]) >= This->oldindex->cb)
            {
                stream->pos_next = 0;
                ++stream->index_next;
            }
        }
        else
        {
            ERR("CAN'T PLAY WITHOUT AN INDEX! SOS! SOS! SOS!\n");
            assert(0);
        }

        if (rtSampleStart != rtSampleStop)
        {
            IMediaSample_SetTime(sample, &rtSampleStart, &rtSampleStop);
            hr = IAsyncReader_Request(pin->pReader, sample, streamnumber);

            if (FAILED(hr))
            {
                ref = IMediaSample_Release(sample);
                assert(ref == 0);
            }
        }
        else
        {
            stream->sample = sample;
            IMediaSample_SetActualDataLength(sample, 0);
            SetEvent(stream->packet_queued);
        }
    }
    else
    {
        if (sample)
        {
            ERR("There should be no sample!\n");
            ref = IMediaSample_Release(sample);
            assert(ref == 0);
        }
    }
    TRACE("--> %08x\n", hr);

    return hr;
}
