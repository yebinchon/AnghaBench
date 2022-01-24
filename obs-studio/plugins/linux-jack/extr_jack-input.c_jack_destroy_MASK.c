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
struct jack_data {int /*<<< orphan*/  jack_mutex; struct jack_data* device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jack_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct jack_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *vptr)
{
	struct jack_data *data = (struct jack_data *)vptr;

	if (!data)
		return;

	FUNC1(data);

	if (data->device)
		FUNC0(data->device);
	FUNC2(&data->jack_mutex);
	FUNC0(data);
}