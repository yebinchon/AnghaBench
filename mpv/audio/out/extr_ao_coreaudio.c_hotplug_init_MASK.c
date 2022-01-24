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
struct ao {int dummy; } ;
struct TYPE_3__ {scalar_t__ member_0; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
typedef  scalar_t__ OSStatus ;
typedef  TYPE_1__ AudioObjectPropertyAddress ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,char*,char*,char*) ; 
 int /*<<< orphan*/  hotplug_cb ; 
 scalar_t__* hotplug_properties ; 
 int /*<<< orphan*/  kAudioObjectPropertyElementMaster ; 
 int /*<<< orphan*/  kAudioObjectPropertyScopeGlobal ; 
 int /*<<< orphan*/  kAudioObjectSystemObject ; 
 char* FUNC3 (scalar_t__) ; 
 scalar_t__ noErr ; 
 int /*<<< orphan*/  FUNC4 (struct ao*) ; 

__attribute__((used)) static int FUNC5(struct ao *ao)
{
    if (!FUNC4(ao))
        goto coreaudio_error;

    OSStatus err = noErr;
    for (int i = 0; i < FUNC1(hotplug_properties); i++) {
        AudioObjectPropertyAddress addr = {
            hotplug_properties[i],
            kAudioObjectPropertyScopeGlobal,
            kAudioObjectPropertyElementMaster
        };
        err = FUNC0(
            kAudioObjectSystemObject, &addr, hotplug_cb, (void *)ao);
        if (err != noErr) {
            char *c1 = FUNC3(hotplug_properties[i]);
            char *c2 = FUNC3(err);
            FUNC2(ao, "failed to set device listener %s (%s)", c1, c2);
            goto coreaudio_error;
        }
    }

    return 0;

coreaudio_error:
    return -1;
}