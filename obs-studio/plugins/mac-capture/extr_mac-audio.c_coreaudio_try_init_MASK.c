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
struct coreaudio_data {int retry_time; scalar_t__ no_devices; int /*<<< orphan*/  device_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct coreaudio_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct coreaudio_data*) ; 

__attribute__((used)) static void FUNC3(struct coreaudio_data *ca)
{
	if (!FUNC2(ca)) {
		FUNC0(LOG_INFO,
		     "coreaudio: failed to find device "
		     "uid: %s, waiting for connection",
		     ca->device_uid);

		ca->retry_time = 2000;

		if (ca->no_devices)
			FUNC0(LOG_INFO, "coreaudio: no device found");
		else
			FUNC1(ca);
	}
}