#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wasapi_state {int /*<<< orphan*/  pAudioClient; } ;
struct ao {struct wasapi_state* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  Format; } ;
typedef  TYPE_1__ WAVEFORMATEXTENSIBLE ;
typedef  int /*<<< orphan*/  WAVEFORMATEX ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ AUDCLNT_E_UNSUPPORTED_FORMAT ; 
 int /*<<< orphan*/  AUDCLNT_SHAREMODE_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (struct wasapi_state*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ao*,char*,int /*<<< orphan*/ ,...) ; 
#define  S_FALSE 129 
#define  S_OK 128 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC10(struct ao *ao, WAVEFORMATEXTENSIBLE *wformat)
{
    struct wasapi_state *state = ao->priv;

    WAVEFORMATEX *closestMatch;
    HRESULT hr = FUNC3(state->pAudioClient,
                                                AUDCLNT_SHAREMODE_SHARED,
                                                &wformat->Format,
                                                &closestMatch);
    FUNC5(ao, "Trying %s (shared) -> %s\n",
               FUNC9(&wformat->Format), FUNC7(hr));
    if (hr != AUDCLNT_E_UNSUPPORTED_FORMAT)
        FUNC1(hr);

    switch (hr) {
    case S_OK:
        break;
    case S_FALSE:
        FUNC8(wformat, closestMatch);
        FUNC0(closestMatch);
        FUNC5(ao, "Closest match is %s\n",
                   FUNC9(&wformat->Format));
        break;
    default:
        hr = FUNC2(state->pAudioClient, &closestMatch);
        FUNC1(hr);
        FUNC8(wformat, closestMatch);
        FUNC5(ao, "Fallback to mix format %s\n",
                   FUNC9(&wformat->Format));
        FUNC0(closestMatch);
    }

    return true;
exit_label:
    FUNC4(state, "Error finding shared mode format: %s\n",
           FUNC6(hr));
    return false;
}