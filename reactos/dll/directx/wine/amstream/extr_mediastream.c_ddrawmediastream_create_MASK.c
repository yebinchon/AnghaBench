#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_11__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_15__ {int ref; TYPE_4__ IAMMediaStream_iface; int /*<<< orphan*/  stream_type; int /*<<< orphan*/  purpose_id; int /*<<< orphan*/ * parent; TYPE_2__* input_pin; int /*<<< orphan*/  critical_section; TYPE_1__ IDirectDrawMediaStream_iface; } ;
struct TYPE_13__ {char* achName; int /*<<< orphan*/  dir; int /*<<< orphan*/ * pFilter; } ;
struct TYPE_12__ {TYPE_5__* parent; } ;
typedef  int /*<<< orphan*/  STREAM_TYPE ;
typedef  TYPE_3__ PIN_INFO ;
typedef  int /*<<< orphan*/  MSPID ;
typedef  int /*<<< orphan*/  IPin ;
typedef  int /*<<< orphan*/  IMultiMediaStream ;
typedef  TYPE_4__ IAMMediaStream ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DirectDrawMediaStreamInputPin ;
typedef  TYPE_5__ DirectDrawMediaStreamImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  DirectDrawMediaStreamImpl_IAMMediaStream_Vtbl ; 
 int /*<<< orphan*/  DirectDrawMediaStreamImpl_IDirectDrawMediaStream_Vtbl ; 
 int /*<<< orphan*/  DirectDrawMediaStreamInputPin_FuncTable ; 
 int /*<<< orphan*/  DirectDrawMediaStreamInputPin_IPin_Vtbl ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ MAX_PIN_NAME ; 
 int /*<<< orphan*/  PINDIR_INPUT ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 

HRESULT FUNC9(IMultiMediaStream *parent, const MSPID *purpose_id,
        STREAM_TYPE stream_type, IAMMediaStream **media_stream)
{
    DirectDrawMediaStreamImpl *object;
    PIN_INFO pin_info;
    HRESULT hr;

    FUNC7("(%p,%s,%p)\n", parent, FUNC8(purpose_id), media_stream);

    object = FUNC3(FUNC2(), HEAP_ZERO_MEMORY, sizeof(DirectDrawMediaStreamImpl));
    if (!object)
        return E_OUTOFMEMORY;

    object->IAMMediaStream_iface.lpVtbl = &DirectDrawMediaStreamImpl_IAMMediaStream_Vtbl;
    object->IDirectDrawMediaStream_iface.lpVtbl = &DirectDrawMediaStreamImpl_IDirectDrawMediaStream_Vtbl;
    object->ref = 1;

    FUNC5(&object->critical_section);

    pin_info.pFilter = NULL;
    pin_info.dir = PINDIR_INPUT;
    pin_info.achName[0] = 'I';
    FUNC6(purpose_id, pin_info.achName + 1, MAX_PIN_NAME - 1);
    hr = FUNC0(&DirectDrawMediaStreamInputPin_IPin_Vtbl,
        sizeof(DirectDrawMediaStreamInputPin), &pin_info, &DirectDrawMediaStreamInputPin_FuncTable,
        &object->critical_section, NULL, (IPin **)&object->input_pin);
    if (FUNC1(hr))
        goto out_object;

    object->input_pin->parent = object;

    object->parent = parent;
    object->purpose_id = *purpose_id;
    object->stream_type = stream_type;

    *media_stream = &object->IAMMediaStream_iface;

    return S_OK;

out_object:
    FUNC4(FUNC2(), 0, object);

    return hr;
}