#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int dwValidParams; int dwChannelGroups; } ;
struct TYPE_20__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_16__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_15__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_14__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_19__ {int ref; int nrofgroups; scalar_t__ pLatencyClock; scalar_t__ synth_sink; scalar_t__ synth; TYPE_7__ IDirectMusicPort_iface; TYPE_5__* group; int /*<<< orphan*/  caps; TYPE_8__ params; int /*<<< orphan*/  active; int /*<<< orphan*/ * parent; TYPE_3__ IKsControl_iface; TYPE_2__ IDirectMusicThru_iface; TYPE_1__ IDirectMusicPortDownload_iface; } ;
struct TYPE_18__ {TYPE_4__* channel; } ;
struct TYPE_17__ {int /*<<< orphan*/  priority; } ;
typedef  TYPE_6__ SynthPortImpl ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  TYPE_7__ IDirectMusicPort ;
typedef  int /*<<< orphan*/  IDirectMusic8Impl ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_8__ DMUS_PORTPARAMS ;
typedef  int /*<<< orphan*/  DMUS_PORTCAPS ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_DirectMusicSynth ; 
 int /*<<< orphan*/  CLSID_DirectMusicSynthSink ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  DAUD_CHAN10_DEF_VOICE_PRIORITY ; 
 int /*<<< orphan*/  DAUD_CHAN11_DEF_VOICE_PRIORITY ; 
 int /*<<< orphan*/  DAUD_CHAN12_DEF_VOICE_PRIORITY ; 
 int /*<<< orphan*/  DAUD_CHAN13_DEF_VOICE_PRIORITY ; 
 int /*<<< orphan*/  DAUD_CHAN14_DEF_VOICE_PRIORITY ; 
 int /*<<< orphan*/  DAUD_CHAN15_DEF_VOICE_PRIORITY ; 
 int /*<<< orphan*/  DAUD_CHAN16_DEF_VOICE_PRIORITY ; 
 int /*<<< orphan*/  DAUD_CHAN1_DEF_VOICE_PRIORITY ; 
 int /*<<< orphan*/  DAUD_CHAN2_DEF_VOICE_PRIORITY ; 
 int /*<<< orphan*/  DAUD_CHAN3_DEF_VOICE_PRIORITY ; 
 int /*<<< orphan*/  DAUD_CHAN4_DEF_VOICE_PRIORITY ; 
 int /*<<< orphan*/  DAUD_CHAN5_DEF_VOICE_PRIORITY ; 
 int /*<<< orphan*/  DAUD_CHAN6_DEF_VOICE_PRIORITY ; 
 int /*<<< orphan*/  DAUD_CHAN7_DEF_VOICE_PRIORITY ; 
 int /*<<< orphan*/  DAUD_CHAN8_DEF_VOICE_PRIORITY ; 
 int /*<<< orphan*/  DAUD_CHAN9_DEF_VOICE_PRIORITY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int DMUS_PORTPARAMS_CHANNELGROUPS ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  IID_IDirectMusicSynth ; 
 int /*<<< orphan*/  IID_IDirectMusicSynthSink ; 
 int /*<<< orphan*/  IID_IReferenceClock ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  SynthPortImpl_DirectMusicPortDownload_Vtbl ; 
 int /*<<< orphan*/  SynthPortImpl_DirectMusicPort_Vtbl ; 
 int /*<<< orphan*/  SynthPortImpl_DirectMusicThru_Vtbl ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  ikscontrol_vtbl ; 

HRESULT FUNC14(IDirectMusic8Impl *parent, DMUS_PORTPARAMS *port_params,
        DMUS_PORTCAPS *port_caps, IDirectMusicPort **port)
{
    SynthPortImpl *obj;
    HRESULT hr = E_FAIL;
    int i;

    FUNC13("(%p, %p, %p)\n", port_params, port_caps, port);

    *port = NULL;

    obj = FUNC3(FUNC2(), HEAP_ZERO_MEMORY, sizeof(SynthPortImpl));
    if (!obj)
        return E_OUTOFMEMORY;

    obj->IDirectMusicPort_iface.lpVtbl = &SynthPortImpl_DirectMusicPort_Vtbl;
    obj->IDirectMusicPortDownload_iface.lpVtbl = &SynthPortImpl_DirectMusicPortDownload_Vtbl;
    obj->IDirectMusicThru_iface.lpVtbl = &SynthPortImpl_DirectMusicThru_Vtbl;
    obj->IKsControl_iface.lpVtbl = &ikscontrol_vtbl;
    obj->ref = 1;
    obj->parent = parent;
    obj->active = FALSE;
    obj->params = *port_params;
    obj->caps = *port_caps;

    hr = FUNC1(&IID_IReferenceClock, (LPVOID*)&obj->pLatencyClock, NULL);
    if (hr != S_OK)
    {
        FUNC4(FUNC2(), 0, obj);
        return hr;
    }

    if (FUNC12(hr))
        hr = FUNC0(&CLSID_DirectMusicSynth, NULL, CLSCTX_INPROC_SERVER, &IID_IDirectMusicSynth, (void**)&obj->synth);

    if (FUNC12(hr))
        hr = FUNC0(&CLSID_DirectMusicSynthSink, NULL, CLSCTX_INPROC_SERVER, &IID_IDirectMusicSynthSink, (void**)&obj->synth_sink);

    if (FUNC12(hr))
        hr = FUNC9(obj->synth, obj->pLatencyClock);

    if (FUNC12(hr))
        hr = FUNC6(obj->synth_sink, obj->pLatencyClock);

    if (FUNC12(hr))
        hr = FUNC10(obj->synth, obj->synth_sink);

    if (FUNC12(hr))
        hr = FUNC7(obj->synth, port_params);

    if (0)
    {
        if (port_params->dwValidParams & DMUS_PORTPARAMS_CHANNELGROUPS) {
            obj->nrofgroups = port_params->dwChannelGroups;
            /* Setting default priorities */
            for (i = 0; i < obj->nrofgroups; i++) {
                FUNC13 ("Setting default channel priorities on channel group %i\n", i + 1);
                obj->group[i].channel[0].priority = DAUD_CHAN1_DEF_VOICE_PRIORITY;
                obj->group[i].channel[1].priority = DAUD_CHAN2_DEF_VOICE_PRIORITY;
                obj->group[i].channel[2].priority = DAUD_CHAN3_DEF_VOICE_PRIORITY;
                obj->group[i].channel[3].priority = DAUD_CHAN4_DEF_VOICE_PRIORITY;
                obj->group[i].channel[4].priority = DAUD_CHAN5_DEF_VOICE_PRIORITY;
                obj->group[i].channel[5].priority = DAUD_CHAN6_DEF_VOICE_PRIORITY;
                obj->group[i].channel[6].priority = DAUD_CHAN7_DEF_VOICE_PRIORITY;
                obj->group[i].channel[7].priority = DAUD_CHAN8_DEF_VOICE_PRIORITY;
                obj->group[i].channel[8].priority = DAUD_CHAN9_DEF_VOICE_PRIORITY;
                obj->group[i].channel[9].priority = DAUD_CHAN10_DEF_VOICE_PRIORITY;
                obj->group[i].channel[10].priority = DAUD_CHAN11_DEF_VOICE_PRIORITY;
                obj->group[i].channel[11].priority = DAUD_CHAN12_DEF_VOICE_PRIORITY;
                obj->group[i].channel[12].priority = DAUD_CHAN13_DEF_VOICE_PRIORITY;
                obj->group[i].channel[13].priority = DAUD_CHAN14_DEF_VOICE_PRIORITY;
                obj->group[i].channel[14].priority = DAUD_CHAN15_DEF_VOICE_PRIORITY;
                obj->group[i].channel[15].priority = DAUD_CHAN16_DEF_VOICE_PRIORITY;
            }
        }
    }

    if (FUNC12(hr)) {
        *port = &obj->IDirectMusicPort_iface;
        return S_OK;
    }

    if (obj->synth)
        FUNC8(obj->synth);
    if (obj->synth_sink)
        FUNC5(obj->synth_sink);
    if (obj->pLatencyClock)
        FUNC11(obj->pLatencyClock);
    FUNC4(FUNC2(), 0, obj);

    return hr;
}