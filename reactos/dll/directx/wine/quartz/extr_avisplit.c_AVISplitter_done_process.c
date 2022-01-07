
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {scalar_t__ cStreams; } ;
struct TYPE_8__ {TYPE_2__* streams; TYPE_1__ Parser; } ;
struct TYPE_7__ {int packet_queued; int * sample; int * thread; } ;
typedef TYPE_2__ StreamData ;
typedef TYPE_3__* LPVOID ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef TYPE_3__ AVISplitterImpl ;


 int CloseHandle (int *) ;
 int IMediaSample_Release (int *) ;
 int ResetEvent (int ) ;
 int S_OK ;
 int SetEvent (int ) ;
 int TRACE (char*,...) ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WaitForSingleObject (int *,int) ;
 int assert (int) ;

__attribute__((used)) static HRESULT AVISplitter_done_process(LPVOID iface)
{
    AVISplitterImpl *This = iface;
    DWORD x;
    ULONG ref;

    for (x = 0; x < This->Parser.cStreams; ++x)
    {
        StreamData *stream = This->streams + x;

        TRACE("Waiting for %u to terminate\n", x);

        SetEvent(stream->packet_queued);
        assert(WaitForSingleObject(stream->thread, 100000) != WAIT_TIMEOUT);
        CloseHandle(stream->thread);
        stream->thread = ((void*)0);

        if (stream->sample)
        {
            ref = IMediaSample_Release(stream->sample);
            assert(ref == 0);
        }
        stream->sample = ((void*)0);

        ResetEvent(stream->packet_queued);
    }
    TRACE("All threads are now terminated\n");

    return S_OK;
}
