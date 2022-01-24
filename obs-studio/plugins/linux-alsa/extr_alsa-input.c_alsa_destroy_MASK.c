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
struct alsa_data {struct alsa_data* device; int /*<<< orphan*/  abort_event; scalar_t__ handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alsa_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct alsa_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void *vptr)
{
	struct alsa_data *data = vptr;

	if (data->handle)
		FUNC0(data);

	FUNC2(data->abort_event);
	FUNC1(data->device);
	FUNC1(data);
}