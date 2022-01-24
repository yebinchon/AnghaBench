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
struct coreaudio_data {struct coreaudio_data* device_uid; struct coreaudio_data* device_name; int /*<<< orphan*/  exit_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct coreaudio_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct coreaudio_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct coreaudio_data *ca = data;

	if (ca) {
		FUNC1(ca);

		FUNC2(ca->exit_event);
		FUNC0(ca->device_name);
		FUNC0(ca->device_uid);
		FUNC0(ca);
	}
}