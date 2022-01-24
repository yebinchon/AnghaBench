#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  signal_handler_t ;
typedef  int /*<<< orphan*/  obs_source_t ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * source; } ;
typedef  TYPE_1__ obs_fader_t ;

/* Variables and functions */
 int /*<<< orphan*/  fader_source_destroyed ; 
 int /*<<< orphan*/  fader_source_volume_changed ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC4(obs_fader_t *fader)
{
	signal_handler_t *sh;
	obs_source_t *source;

	if (!fader)
		return;

	FUNC1(&fader->mutex);
	source = fader->source;
	fader->source = NULL;
	FUNC2(&fader->mutex);

	if (!source)
		return;

	sh = FUNC0(source);
	FUNC3(sh, "volume", fader_source_volume_changed,
				  fader);
	FUNC3(sh, "destroy", fader_source_destroyed, fader);
}