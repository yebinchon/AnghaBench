
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int QuadPart; } ;
struct TYPE_6__ {int nSamplesPerSec; } ;
struct TYPE_7__ {TYPE_1__ Format; } ;
struct wasapi_state {TYPE_3__ qpc_frequency; TYPE_2__ format; int clock_frequency; int pAudioClock; int sample_count; } ;
typedef scalar_t__ UINT64 ;
struct TYPE_9__ {int QuadPart; } ;
typedef TYPE_4__ LARGE_INTEGER ;
typedef int INT64 ;
typedef scalar_t__ HRESULT ;


 int EXIT_ON_ERROR (scalar_t__) ;
 scalar_t__ IAudioClock_GetPosition (int ,scalar_t__*,scalar_t__*) ;
 int MP_ERR (struct wasapi_state*,char*,int ) ;
 int MP_TRACE (struct wasapi_state*,char*,double) ;
 int MP_VERBOSE (struct wasapi_state*,char*,...) ;
 int MP_WARN (struct wasapi_state*,char*,double) ;
 int QueryPerformanceCounter (TYPE_4__*) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 scalar_t__ atomic_load (int *) ;
 scalar_t__ av_rescale (int ,int,int ) ;
 int mp_HRESULT_to_str (scalar_t__) ;
 scalar_t__ uint64_scale (scalar_t__,int,int ) ;

__attribute__((used)) static HRESULT get_device_delay(struct wasapi_state *state, double *delay_us) {
    UINT64 sample_count = atomic_load(&state->sample_count);
    UINT64 position, qpc_position;
    HRESULT hr;

    hr = IAudioClock_GetPosition(state->pAudioClock, &position, &qpc_position);
    EXIT_ON_ERROR(hr);



    if (hr == S_FALSE)
        MP_VERBOSE(state, "Possibly inaccurate device position.\n");


    UINT64 sample_position = uint64_scale(position,
                                          state->format.Format.nSamplesPerSec,
                                          state->clock_frequency);
    INT64 diff = sample_count - sample_position;
    *delay_us = diff * 1e6 / state->format.Format.nSamplesPerSec;



    LARGE_INTEGER qpc;
    QueryPerformanceCounter(&qpc);
    INT64 qpc_diff = av_rescale(qpc.QuadPart, 10000000, state->qpc_frequency.QuadPart)
                     - qpc_position;


    if (qpc_diff < 10 * 10000000) {
        *delay_us -= qpc_diff / 10.0;
    } else {
        MP_VERBOSE(state, "Insane qpc delay correction of %g seconds. "
                   "Ignoring it.\n", qpc_diff / 10000000.0);
    }

    if (sample_count > 0 && *delay_us <= 0) {
        MP_WARN(state, "Under-run: Device delay: %g us\n", *delay_us);
    } else {
        MP_TRACE(state, "Device delay: %g us\n", *delay_us);
    }

    return S_OK;
exit_label:
    MP_ERR(state, "Error getting device delay: %s\n", mp_HRESULT_to_str(hr));
    return hr;
}
