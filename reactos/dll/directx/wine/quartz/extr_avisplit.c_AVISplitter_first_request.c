
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct thread_args {int stream; TYPE_4__* This; } ;
struct TYPE_11__ {int cStreams; TYPE_1__* pInputPin; } ;
struct TYPE_13__ {TYPE_3__* streams; TYPE_2__ Parser; } ;
struct TYPE_12__ {scalar_t__ index_next; scalar_t__ index; scalar_t__ entries; int * thread; scalar_t__ stdindex; int seek; int pos; int pos_next; int packet_queued; } ;
struct TYPE_10__ {int pReader; } ;
typedef TYPE_3__ StreamData ;
typedef TYPE_4__* LPVOID ;
typedef int IMediaSample ;
typedef int HRESULT ;
typedef int DWORD_PTR ;
typedef int DWORD ;
typedef int BOOL ;
typedef TYPE_4__ AVISplitterImpl ;


 int AVISplitter_Sample (TYPE_4__*,int *,int ) ;
 int AVISplitter_SendEndOfFile (TYPE_4__*,int) ;
 int AVISplitter_next_request (TYPE_4__*,int) ;
 int AVISplitter_thread_reader ;
 struct thread_args* CoTaskMemAlloc (int) ;
 int * CreateThread (int *,int ,int ,struct thread_args*,int ,int*) ;
 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IAsyncReader_WaitForNext (int ,int,int **,int *) ;
 int IMediaSample_Release (int *) ;
 int ResetEvent (int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_FALSE ;
 int S_OK ;
 int TRACE (char*,...) ;
 int TRUE ;
 int VFW_E_NOT_CONNECTED ;
 int assert (int) ;

__attribute__((used)) static HRESULT AVISplitter_first_request(LPVOID iface)
{
    AVISplitterImpl *This = iface;
    HRESULT hr = S_OK;
    DWORD x;
    IMediaSample *sample = ((void*)0);
    BOOL have_sample = FALSE;

    TRACE("(%p)->()\n", This);

    for (x = 0; x < This->Parser.cStreams; ++x)
    {
        StreamData *stream = This->streams + x;


        assert(!stream->thread);

        assert(!sample);


        ResetEvent(stream->packet_queued);

        stream->pos_next = stream->pos;
        stream->index_next = stream->index;


        stream->seek = TRUE;
        if (have_sample)
        {
            DWORD_PTR dwUser = ~0;
            hr = IAsyncReader_WaitForNext(This->Parser.pInputPin->pReader, 10000, &sample, &dwUser);
            assert(hr == S_OK);
            assert(sample);

            AVISplitter_Sample(iface, sample, dwUser);
            IMediaSample_Release(sample);
        }

        hr = AVISplitter_next_request(This, x);
        TRACE("-->%08x\n", hr);


        have_sample = (hr == S_OK);
        if (hr == S_FALSE)
            AVISplitter_SendEndOfFile(This, x);

        if (FAILED(hr) && hr != VFW_E_NOT_CONNECTED)
            break;
        hr = S_OK;
    }


    for (x = 0; x < This->Parser.cStreams && SUCCEEDED(hr); ++x)
    {
        struct thread_args *args;
        DWORD tid;

        if ((This->streams[x].stdindex && This->streams[x].index_next >= This->streams[x].entries) ||
            (!This->streams[x].stdindex && This->streams[x].index_next))
        {
            This->streams[x].thread = ((void*)0);
            continue;
        }

        args = CoTaskMemAlloc(sizeof(*args));
        args->This = This;
        args->stream = x;
        This->streams[x].thread = CreateThread(((void*)0), 0, AVISplitter_thread_reader, args, 0, &tid);
        TRACE("Created stream %u thread 0x%08x\n", x, tid);
    }

    if (FAILED(hr))
        ERR("Horsemen of the apocalypse came to bring error 0x%08x\n", hr);

    return hr;
}
