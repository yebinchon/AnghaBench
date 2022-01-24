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
struct coreaudio_data {int retry_time; int /*<<< orphan*/  device_name; } ;
typedef  int /*<<< orphan*/  UInt32 ;
struct TYPE_3__ {scalar_t__ mSelector; } ;
typedef  int /*<<< orphan*/  OSStatus ;
typedef  TYPE_1__ AudioObjectPropertyAddress ;
typedef  int /*<<< orphan*/  AudioObjectID ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 scalar_t__ PROPERTY_DEFAULT_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct coreaudio_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct coreaudio_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct coreaudio_data*) ; 
 int /*<<< orphan*/  noErr ; 

__attribute__((used)) static OSStatus
FUNC5(AudioObjectID id, UInt32 num_addresses,
		      const AudioObjectPropertyAddress addresses[], void *data)
{
	struct coreaudio_data *ca = data;

	FUNC3(ca);
	FUNC4(ca);

	if (addresses[0].mSelector == PROPERTY_DEFAULT_DEVICE)
		ca->retry_time = 300;
	else
		ca->retry_time = 2000;

	FUNC1(LOG_INFO,
	     "coreaudio: device '%s' disconnected or changed.  "
	     "attempting to reconnect",
	     ca->device_name);

	FUNC2(ca);

	FUNC0(id);
	FUNC0(num_addresses);

	return noErr;
}