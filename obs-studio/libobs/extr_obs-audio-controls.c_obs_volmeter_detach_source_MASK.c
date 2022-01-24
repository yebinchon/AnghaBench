#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  signal_handler_t ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * source; } ;
typedef  TYPE_1__ obs_volmeter_t ;
typedef  int /*<<< orphan*/  obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  volmeter_source_data_received ; 
 int /*<<< orphan*/  volmeter_source_destroyed ; 
 int /*<<< orphan*/  volmeter_source_volume_changed ; 

void FUNC5(obs_volmeter_t *volmeter)
{
	signal_handler_t *sh;
	obs_source_t *source;

	if (!volmeter)
		return;

	FUNC2(&volmeter->mutex);
	source = volmeter->source;
	volmeter->source = NULL;
	FUNC3(&volmeter->mutex);

	if (!source)
		return;

	sh = FUNC0(source);
	FUNC4(sh, "volume", volmeter_source_volume_changed,
				  volmeter);
	FUNC4(sh, "destroy", volmeter_source_destroyed,
				  volmeter);
	FUNC1(
		source, volmeter_source_data_received, volmeter);
}