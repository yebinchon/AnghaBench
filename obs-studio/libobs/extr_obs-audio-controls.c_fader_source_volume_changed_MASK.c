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
struct obs_fader {int ignore_next_signal; float cur_db; int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  calldata_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 float FUNC1 (float const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct obs_fader*,float const) ; 

__attribute__((used)) static void FUNC5(void *vptr, calldata_t *calldata)
{
	struct obs_fader *fader = (struct obs_fader *)vptr;

	FUNC2(&fader->mutex);

	if (fader->ignore_next_signal) {
		fader->ignore_next_signal = false;
		FUNC3(&fader->mutex);
		return;
	}

	const float mul = (float)FUNC0(calldata, "volume");
	const float db = FUNC1(mul);
	fader->cur_db = db;

	FUNC3(&fader->mutex);

	FUNC4(fader, db);
}