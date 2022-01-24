#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_1__ IAudioStreamSample_iface; int /*<<< orphan*/ * audio_data; int /*<<< orphan*/ * parent; } ;
typedef  int /*<<< orphan*/  IMediaStream ;
typedef  TYPE_2__ IAudioStreamSampleImpl ;
typedef  int /*<<< orphan*/  IAudioStreamSample ;
typedef  int /*<<< orphan*/  IAudioMediaStream ;
typedef  int /*<<< orphan*/  IAudioData ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  AudioStreamSample_Vtbl ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC3(IAudioMediaStream *parent, IAudioData *audio_data, IAudioStreamSample **audio_stream_sample)
{
    IAudioStreamSampleImpl *object;

    FUNC2("(%p)\n", audio_stream_sample);

    object = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeof(IAudioStreamSampleImpl));
    if (!object)
        return E_OUTOFMEMORY;

    object->IAudioStreamSample_iface.lpVtbl = &AudioStreamSample_Vtbl;
    object->ref = 1;
    object->parent = (IMediaStream*)parent;
    object->audio_data = audio_data;

    *audio_stream_sample = (IAudioStreamSample*)&object->IAudioStreamSample_iface;

    return S_OK;
}