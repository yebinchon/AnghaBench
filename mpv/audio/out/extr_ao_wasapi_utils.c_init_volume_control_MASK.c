#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wasapi_state {scalar_t__ share_mode; int /*<<< orphan*/  pAudioVolume; int /*<<< orphan*/  pEndpointVolume; scalar_t__ vol_hw_support; int /*<<< orphan*/  pAudioClient; int /*<<< orphan*/  pDevice; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ AUDCLNT_SHAREMODE_EXCLUSIVE ; 
 int /*<<< orphan*/  CLSCTX_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  IID_IAudioEndpointVolume ; 
 int /*<<< orphan*/  IID_ISimpleAudioVolume ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (struct wasapi_state*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wasapi_state*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct wasapi_state *state)
{
    HRESULT hr;
    if (state->share_mode == AUDCLNT_SHAREMODE_EXCLUSIVE) {
        FUNC4(state, "Activating pEndpointVolume interface\n");
        hr = FUNC3(state->pDevice,
                                         &IID_IAudioEndpointVolume,
                                         CLSCTX_ALL, NULL,
                                         (void **)&state->pEndpointVolume);
        FUNC0(hr);

        FUNC4(state, "IAudioEndpointVolume::QueryHardwareSupport\n");
        hr = FUNC2(state->pEndpointVolume,
                                                       &state->vol_hw_support);
        FUNC0(hr);
    } else {
        FUNC4(state, "IAudioClient::Initialize pAudioVolume\n");
        hr = FUNC1(state->pAudioClient,
                                     &IID_ISimpleAudioVolume,
                                     (void **)&state->pAudioVolume);
        FUNC0(hr);
    }
    return;
exit_label:
    state->vol_hw_support = 0;
    FUNC6(state->pEndpointVolume);
    FUNC6(state->pAudioVolume);
    FUNC5(state, "Error setting up volume control: %s\n",
            FUNC7(hr));
}