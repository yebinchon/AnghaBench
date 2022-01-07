
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_7__ {scalar_t__ cStreams; } ;
struct TYPE_9__ {TYPE_2__* streams; TYPE_1__ Parser; } ;
struct TYPE_8__ {int thread; int packet_queued; int * sample; } ;
typedef TYPE_2__ StreamData ;
typedef TYPE_3__* LPVOID ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef TYPE_3__ AVISplitterImpl ;


 int IMediaSample_Release (int *) ;
 int ResetEvent (int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_3__*) ;
 int assert (int) ;

__attribute__((used)) static HRESULT AVISplitter_Flush(LPVOID iface)
{
    AVISplitterImpl *This = iface;
    DWORD x;
    ULONG ref;

    TRACE("(%p)->()\n", This);

    for (x = 0; x < This->Parser.cStreams; ++x)
    {
        StreamData *stream = This->streams + x;

        if (stream->sample)
        {
            ref = IMediaSample_Release(stream->sample);
            assert(ref == 0);
        }
        stream->sample = ((void*)0);

        ResetEvent(stream->packet_queued);
        assert(!stream->thread);
    }

    return S_OK;
}
