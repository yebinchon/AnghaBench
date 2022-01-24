#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct coreaudio_data {int /*<<< orphan*/  unit; scalar_t__ default_device; } ;
typedef  int /*<<< orphan*/  callback_info ;
struct TYPE_6__ {struct coreaudio_data* inputProcRefCon; int /*<<< orphan*/  inputProc; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  OSStatus ;
typedef  TYPE_1__ AudioObjectPropertyAddress ;
typedef  TYPE_2__ AURenderCallbackStruct ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,struct coreaudio_data*) ; 
 int /*<<< orphan*/  PROPERTY_DEFAULT_DEVICE ; 
 int /*<<< orphan*/  PROPERTY_FORMATS ; 
 int /*<<< orphan*/  SCOPE_GLOBAL ; 
 int /*<<< orphan*/  FUNC1 (struct coreaudio_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct coreaudio_data*,char*,char*) ; 
 int /*<<< orphan*/  input_callback ; 
 int /*<<< orphan*/  kAudioDevicePropertyDeviceIsAlive ; 
 int /*<<< orphan*/  kAudioObjectPropertyElementMaster ; 
 int /*<<< orphan*/  kAudioObjectPropertyScopeGlobal ; 
 int /*<<< orphan*/  kAudioObjectSystemObject ; 
 int /*<<< orphan*/  kAudioOutputUnitProperty_SetInputCallback ; 
 int /*<<< orphan*/  notification_callback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int) ; 

__attribute__((used)) static bool FUNC4(struct coreaudio_data *ca)
{
	OSStatus stat;
	AURenderCallbackStruct callback_info = {.inputProc = input_callback,
						.inputProcRefCon = ca};

	stat = FUNC1(ca, kAudioDevicePropertyDeviceIsAlive);
	if (!FUNC2(stat, ca, "coreaudio_init_hooks",
			"set disconnect callback"))
		return false;

	stat = FUNC1(ca, PROPERTY_FORMATS);
	if (!FUNC2(stat, ca, "coreaudio_init_hooks",
			"set format change callback"))
		return false;

	if (ca->default_device) {
		AudioObjectPropertyAddress addr = {
			PROPERTY_DEFAULT_DEVICE,
			kAudioObjectPropertyScopeGlobal,
			kAudioObjectPropertyElementMaster};

		stat = FUNC0(kAudioObjectSystemObject,
						      &addr,
						      notification_callback,
						      ca);
		if (!FUNC2(stat, ca, "coreaudio_init_hooks",
				"set device change callback"))
			return false;
	}

	stat = FUNC3(ca->unit, kAudioOutputUnitProperty_SetInputCallback,
			    SCOPE_GLOBAL, 0, &callback_info,
			    sizeof(callback_info));
	if (!FUNC2(stat, ca, "coreaudio_init_hooks", "set input callback"))
		return false;

	return true;
}