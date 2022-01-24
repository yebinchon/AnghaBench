#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wasapi_state {int /*<<< orphan*/  pAudioClient; } ;
struct ao {struct wasapi_state* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  Format; } ;
typedef  TYPE_1__ WAVEFORMATEXTENSIBLE ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  AUDCLNT_SHAREMODE_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct ao *ao, WAVEFORMATEXTENSIBLE *wformat)
{
    struct wasapi_state *state = ao->priv;
    HRESULT hr = FUNC0(state->pAudioClient,
                                                AUDCLNT_SHAREMODE_EXCLUSIVE,
                                                &wformat->Format, NULL);
    FUNC1(ao, "Trying %s (exclusive) -> %s\n",
               FUNC4(&wformat->Format), FUNC3(hr));
    return FUNC2(hr);
}