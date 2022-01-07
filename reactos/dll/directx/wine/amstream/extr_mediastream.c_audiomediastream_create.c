
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_15__ {int ref; TYPE_4__ IAMMediaStream_iface; int stream_type; int purpose_id; int * parent; TYPE_2__* input_pin; int critical_section; TYPE_1__ IAudioMediaStream_iface; } ;
struct TYPE_13__ {char* achName; int dir; int * pFilter; } ;
struct TYPE_12__ {TYPE_5__* parent; } ;
typedef int STREAM_TYPE ;
typedef TYPE_3__ PIN_INFO ;
typedef int MSPID ;
typedef int IPin ;
typedef int IMultiMediaStream ;
typedef TYPE_4__ IAMMediaStream ;
typedef int HRESULT ;
typedef int AudioMediaStreamInputPin ;
typedef TYPE_5__ AudioMediaStreamImpl ;


 int AudioMediaStreamImpl_IAMMediaStream_Vtbl ;
 int AudioMediaStreamImpl_IAudioMediaStream_Vtbl ;
 int AudioMediaStreamInputPin_FuncTable ;
 int AudioMediaStreamInputPin_IPin_Vtbl ;
 int BaseInputPin_Construct (int *,int,TYPE_3__*,int *,int *,int *,int **) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_5__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_5__*) ;
 int InitializeCriticalSection (int *) ;
 scalar_t__ MAX_PIN_NAME ;
 int PINDIR_INPUT ;
 int S_OK ;
 int StringFromGUID2 (int const*,char*,scalar_t__) ;
 int TRACE (char*,int *,int ,TYPE_4__**) ;
 int debugstr_guid (int const*) ;

HRESULT audiomediastream_create(IMultiMediaStream *parent, const MSPID *purpose_id,
        STREAM_TYPE stream_type, IAMMediaStream **media_stream)
{
    AudioMediaStreamImpl *object;
    PIN_INFO pin_info;
    HRESULT hr;

    TRACE("(%p,%s,%p)\n", parent, debugstr_guid(purpose_id), media_stream);

    object = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(AudioMediaStreamImpl));
    if (!object)
        return E_OUTOFMEMORY;

    object->IAMMediaStream_iface.lpVtbl = &AudioMediaStreamImpl_IAMMediaStream_Vtbl;
    object->IAudioMediaStream_iface.lpVtbl = &AudioMediaStreamImpl_IAudioMediaStream_Vtbl;
    object->ref = 1;

    InitializeCriticalSection(&object->critical_section);

    pin_info.pFilter = ((void*)0);
    pin_info.dir = PINDIR_INPUT;
    pin_info.achName[0] = 'I';
    StringFromGUID2(purpose_id, pin_info.achName + 1, MAX_PIN_NAME - 1);
    hr = BaseInputPin_Construct(&AudioMediaStreamInputPin_IPin_Vtbl,
        sizeof(AudioMediaStreamInputPin), &pin_info, &AudioMediaStreamInputPin_FuncTable,
        &object->critical_section, ((void*)0), (IPin **)&object->input_pin);
    if (FAILED(hr))
        goto out_object;

    object->input_pin->parent = object;

    object->parent = parent;
    object->purpose_id = *purpose_id;
    object->stream_type = stream_type;

    *media_stream = &object->IAMMediaStream_iface;

    return S_OK;

out_object:
    HeapFree(GetProcessHeap(), 0, object);

    return hr;
}
