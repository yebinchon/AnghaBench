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
typedef  int /*<<< orphan*/  id ;
typedef  int UInt32 ;
struct TYPE_3__ {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  OSStatus ;
typedef  TYPE_1__ AudioObjectPropertyAddress ;
typedef  int /*<<< orphan*/  AudioDeviceID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  alloc_default_id ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  kAudioHardwarePropertyDefaultSystemOutputDevice ; 
 int /*<<< orphan*/  kAudioObjectPropertyElementMaster ; 
 int /*<<< orphan*/  kAudioObjectPropertyScopeGlobal ; 
 int /*<<< orphan*/  kAudioObjectSystemObject ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(char **p_id)
{
	AudioObjectPropertyAddress addr = {
		kAudioHardwarePropertyDefaultSystemOutputDevice,
		kAudioObjectPropertyScopeGlobal,
		kAudioObjectPropertyElementMaster};

	if (*p_id)
		return;

	OSStatus stat;
	AudioDeviceID id = 0;
	UInt32 size = sizeof(id);

	stat = FUNC0(kAudioObjectSystemObject, &addr, 0,
					  NULL, &size, &id);
	if (FUNC3(stat, "AudioObjectGetPropertyData"))
		FUNC2(alloc_default_id, p_id, id,
						 true);
	if (!*p_id)
		*p_id = FUNC1(1);
}