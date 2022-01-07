
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_5__ {int csFilter; } ;
struct TYPE_6__ {scalar_t__ bufferLen; int grabberMethod; int grabberIface; TYPE_1__ filter; int * bufferData; } ;
typedef TYPE_2__ SG_Impl ;
typedef int REFERENCE_TIME ;
typedef scalar_t__ LONG ;
typedef int IMediaSample ;
typedef int BYTE ;


 int * CoTaskMemAlloc (scalar_t__) ;
 int CoTaskMemFree (int *) ;
 int CopyMemory (int *,int *,scalar_t__) ;
 int ERR (char*,TYPE_2__*,int *,scalar_t__) ;
 int EnterCriticalSection (int *) ;
 int FIXME (char*,int) ;
 scalar_t__ IMediaSample_AddRef (int *) ;
 scalar_t__ IMediaSample_GetActualDataLength (int *) ;
 int IMediaSample_GetPointer (int *,int **) ;
 int IMediaSample_GetTime (int *,int*,int*) ;
 int IMediaSample_Release (int *) ;
 int ISampleGrabberCB_BufferCB (int ,double,int *,scalar_t__) ;
 int ISampleGrabberCB_SampleCB (int ,double,int *) ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ SUCCEEDED (int ) ;

__attribute__((used)) static void SampleGrabber_callback(SG_Impl *This, IMediaSample *sample)
{
    double time = 0.0;
    REFERENCE_TIME tStart, tEnd;
    if (This->bufferLen >= 0) {
        BYTE *data = 0;
        LONG size = IMediaSample_GetActualDataLength(sample);
        if (size >= 0 && SUCCEEDED(IMediaSample_GetPointer(sample, &data))) {
            if (!data)
                size = 0;
            EnterCriticalSection(&This->filter.csFilter);
            if (This->bufferLen != size) {
                CoTaskMemFree(This->bufferData);
                This->bufferData = size ? CoTaskMemAlloc(size) : ((void*)0);
                This->bufferLen = size;
            }
            if (size)
                CopyMemory(This->bufferData, data, size);
            LeaveCriticalSection(&This->filter.csFilter);
        }
    }
    if (!This->grabberIface)
        return;
    if (SUCCEEDED(IMediaSample_GetTime(sample, &tStart, &tEnd)))
        time = 1e-7 * tStart;
    switch (This->grabberMethod) {
        case 0:
     {
  ULONG ref = IMediaSample_AddRef(sample);
  ISampleGrabberCB_SampleCB(This->grabberIface, time, sample);
  ref = IMediaSample_Release(sample) + 1 - ref;
  if (ref)
  {
      ERR("(%p) Callback referenced sample %p by %u\n", This, sample, ref);

      while (ref--)
   IMediaSample_Release(sample);
  }
     }
            break;
        case 1:
            {
                BYTE *data = 0;
                LONG size = IMediaSample_GetActualDataLength(sample);
                if (size && SUCCEEDED(IMediaSample_GetPointer(sample, &data)) && data)
                    ISampleGrabberCB_BufferCB(This->grabberIface, time, data, size);
            }
            break;
        case -1:
            break;
        default:
            FIXME("unsupported method %d\n", This->grabberMethod);

            This->grabberMethod = -1;
    }
}
