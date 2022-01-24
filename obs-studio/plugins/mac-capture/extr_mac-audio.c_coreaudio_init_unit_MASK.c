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
struct coreaudio_data {int au_initialized; int /*<<< orphan*/  unit; } ;
struct TYPE_3__ {int /*<<< orphan*/  componentSubType; int /*<<< orphan*/  componentType; } ;
typedef  int /*<<< orphan*/  OSStatus ;
typedef  TYPE_1__ AudioComponentDescription ;
typedef  int /*<<< orphan*/  AudioComponent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct coreaudio_data*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct coreaudio_data*,char*,char*) ; 
 int /*<<< orphan*/  kAudioUnitSubType_HALOutput ; 
 int /*<<< orphan*/  kAudioUnitType_Output ; 

__attribute__((used)) static bool FUNC4(struct coreaudio_data *ca)
{
	AudioComponentDescription desc = {
		.componentType = kAudioUnitType_Output,
		.componentSubType = kAudioUnitSubType_HALOutput};

	AudioComponent component = FUNC0(NULL, &desc);
	if (!component) {
		FUNC3(ca, "coreaudio_init_unit", "find component failed");
		return false;
	}

	OSStatus stat = FUNC1(component, &ca->unit);
	if (!FUNC2(stat, ca, "coreaudio_init_unit", "instance unit"))
		return false;

	ca->au_initialized = true;
	return true;
}