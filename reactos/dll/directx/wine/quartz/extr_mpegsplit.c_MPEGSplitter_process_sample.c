
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ llStop; } ;
struct TYPE_10__ {unsigned int cStreams; int * ppPins; TYPE_2__ sourceSeeking; TYPE_1__* pInputPin; } ;
struct TYPE_11__ {scalar_t__ position; scalar_t__ EndOfFile; TYPE_3__ Parser; int header; } ;
struct TYPE_8__ {void* rtCurrent; } ;
typedef void* REFERENCE_TIME ;
typedef TYPE_4__ MPEGSplitterImpl ;
typedef TYPE_4__* LPVOID ;
typedef int IPin ;
typedef int IMediaSample ;
typedef scalar_t__ HRESULT ;
typedef int DWORD_PTR ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 scalar_t__ BYTES_FROM_MEDIATIME (void*) ;
 scalar_t__ FAILED (scalar_t__) ;
 int FIXME (char*) ;
 scalar_t__ FillBuffer (TYPE_4__*,int *) ;
 scalar_t__ IMediaSample_GetActualDataLength (int *) ;
 scalar_t__ IMediaSample_GetPointer (int *,int **) ;
 scalar_t__ IMediaSample_GetTime (int *,void**,void**) ;
 scalar_t__ IPin_ConnectedTo (int ,int **) ;
 scalar_t__ IPin_EndOfStream (int *) ;
 int IPin_Release (int *) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int TRACE (char*) ;
 scalar_t__ VFW_E_WRONG_STATE ;
 int WARN (char*,unsigned int,...) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static HRESULT MPEGSplitter_process_sample(LPVOID iface, IMediaSample * pSample, DWORD_PTR cookie)
{
    MPEGSplitterImpl *This = iface;
    BYTE *pbSrcStream;
    DWORD cbSrcStream = 0;
    REFERENCE_TIME tStart, tStop, tAviStart = This->position;
    HRESULT hr;

    hr = IMediaSample_GetTime(pSample, &tStart, &tStop);
    if (SUCCEEDED(hr))
    {
        cbSrcStream = IMediaSample_GetActualDataLength(pSample);
        hr = IMediaSample_GetPointer(pSample, &pbSrcStream);
    }


    if (cbSrcStream == 0)
    {
        FIXME(".. Why do I need you?\n");
        return S_OK;
    }





    hr = FillBuffer(This, pSample);
    if (hr != S_OK)
    {
        WARN("Failed with hres: %08x!\n", hr);


        if (hr == VFW_E_WRONG_STATE || hr == S_FALSE)
        {
            memcpy(This->header, pbSrcStream, 4);
            This->Parser.pInputPin->rtCurrent = tStart;
            This->position = tAviStart;
        }
    }

    if (BYTES_FROM_MEDIATIME(tStop) >= This->EndOfFile || This->position >= This->Parser.sourceSeeking.llStop)
    {
        unsigned int i;

        TRACE("End of file reached\n");

        for (i = 0; i < This->Parser.cStreams; i++)
        {
            IPin* ppin;

            hr = IPin_ConnectedTo(This->Parser.ppPins[i+1], &ppin);
            if (SUCCEEDED(hr))
            {
                hr = IPin_EndOfStream(ppin);
                IPin_Release(ppin);
            }
            if (FAILED(hr))
                WARN("Error sending EndOfStream to pin %u (%x)\n", i, hr);
        }


        hr = S_FALSE;
    }

    return hr;
}
