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
typedef  int /*<<< orphan*/  obs_enum_audio_device_cb ;
typedef  int UInt32 ;
struct TYPE_4__ {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  OSStatus ;
typedef  TYPE_1__ AudioObjectPropertyAddress ;
typedef  int /*<<< orphan*/  AudioDeviceID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kAudioHardwarePropertyDevices ; 
 int /*<<< orphan*/  kAudioObjectPropertyElementMaster ; 
 int /*<<< orphan*/  kAudioObjectPropertyScopeGlobal ; 
 int /*<<< orphan*/  kAudioObjectSystemObject ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(obs_enum_audio_device_cb cb, void *data,
			       bool allow_inputs)
{
	AudioObjectPropertyAddress addr = {kAudioHardwarePropertyDevices,
					   kAudioObjectPropertyScopeGlobal,
					   kAudioObjectPropertyElementMaster};

	UInt32 size = 0;
	UInt32 count;
	OSStatus stat;
	AudioDeviceID *ids;

	stat = FUNC1(kAudioObjectSystemObject, &addr,
					      0, NULL, &size);
	if (!FUNC5(stat, "get data size"))
		return;

	ids = FUNC3(size);
	count = size / sizeof(AudioDeviceID);

	stat = FUNC0(kAudioObjectSystemObject, &addr, 0,
					  NULL, &size, ids);
	if (FUNC5(stat, "get data")) {
		for (UInt32 i = 0; i < count; i++) {
			if (!FUNC4(cb, data, ids[i],
							      allow_inputs))
				break;
		}
	}

	FUNC2(ids);
}