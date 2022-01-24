#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  obs_enum_audio_device_cb ;
typedef  scalar_t__ UINT ;
struct TYPE_11__ {TYPE_1__* lpVtbl; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* GetCount ) (TYPE_2__*,scalar_t__*) ;int /*<<< orphan*/  (* EnumAudioEndpoints ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ;} ;
typedef  TYPE_2__ IMMDeviceEnumerator ;
typedef  TYPE_2__ IMMDeviceCollection ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_ALL ; 
 int /*<<< orphan*/  CLSID_MMDeviceEnumerator ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  DEVICE_STATE_ACTIVE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IMMDeviceEnumerator ; 
 int /*<<< orphan*/  eRender ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__*) ; 

void FUNC6(obs_enum_audio_device_cb cb, void *data)
{
	IMMDeviceEnumerator *enumerator = NULL;
	IMMDeviceCollection *collection = NULL;
	UINT count;
	HRESULT hr;

	hr = FUNC0(&CLSID_MMDeviceEnumerator, NULL, CLSCTX_ALL,
			      &IID_IMMDeviceEnumerator, &enumerator);
	if (FUNC1(hr)) {
		goto fail;
	}

	hr = enumerator->lpVtbl->EnumAudioEndpoints(
		enumerator, eRender, DEVICE_STATE_ACTIVE, &collection);
	if (FUNC1(hr)) {
		goto fail;
	}

	hr = collection->lpVtbl->GetCount(collection, &count);
	if (FUNC1(hr)) {
		goto fail;
	}

	for (UINT i = 0; i < count; i++) {
		if (!FUNC2(cb, data, collection, i)) {
			break;
		}
	}

fail:
	FUNC3(enumerator);
	FUNC3(collection);
}