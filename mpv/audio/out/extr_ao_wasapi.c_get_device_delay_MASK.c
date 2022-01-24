#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_6__ {int nSamplesPerSec; } ;
struct TYPE_7__ {TYPE_1__ Format; } ;
struct wasapi_state {TYPE_3__ qpc_frequency; TYPE_2__ format; int /*<<< orphan*/  clock_frequency; int /*<<< orphan*/  pAudioClock; int /*<<< orphan*/  sample_count; } ;
typedef  scalar_t__ UINT64 ;
struct TYPE_9__ {int /*<<< orphan*/  QuadPart; } ;
typedef  TYPE_4__ LARGE_INTEGER ;
typedef  int INT64 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct wasapi_state*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wasapi_state*,char*,double) ; 
 int /*<<< orphan*/  FUNC4 (struct wasapi_state*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct wasapi_state*,char*,double) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC11(struct wasapi_state *state, double *delay_us) {
    UINT64 sample_count = FUNC7(&state->sample_count);
    UINT64 position, qpc_position;
    HRESULT hr;

    hr = FUNC1(state->pAudioClock, &position, &qpc_position);
    FUNC0(hr);
    // GetPosition succeeded, but the result may be
    // inaccurate due to the length of the call
    // http://msdn.microsoft.com/en-us/library/windows/desktop/dd370889%28v=vs.85%29.aspx
    if (hr == S_FALSE)
        FUNC4(state, "Possibly inaccurate device position.\n");

    // convert position to number of samples careful to avoid overflow
    UINT64 sample_position = FUNC10(position,
                                          state->format.Format.nSamplesPerSec,
                                          state->clock_frequency);
    INT64 diff = sample_count - sample_position;
    *delay_us = diff * 1e6 / state->format.Format.nSamplesPerSec;

    // Correct for any delay in IAudioClock_GetPosition above.
    // This should normally be very small (<1 us), but just in case. . .
    LARGE_INTEGER qpc;
    FUNC6(&qpc);
    INT64 qpc_diff = FUNC8(qpc.QuadPart, 10000000, state->qpc_frequency.QuadPart)
                     - qpc_position;
    // ignore the above calculation if it yields more than 10 seconds (due to
    // possible overflow inside IAudioClock_GetPosition)
    if (qpc_diff < 10 * 10000000) {
        *delay_us -= qpc_diff / 10.0; // convert to us
    } else {
        FUNC4(state, "Insane qpc delay correction of %g seconds. "
                   "Ignoring it.\n", qpc_diff / 10000000.0);
    }

    if (sample_count > 0 && *delay_us <= 0) {
        FUNC5(state, "Under-run: Device delay: %g us\n", *delay_us);
    } else {
        FUNC3(state, "Device delay: %g us\n", *delay_us);
    }

    return S_OK;
exit_label:
    FUNC2(state, "Error getting device delay: %s\n", FUNC9(hr));
    return hr;
}