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
struct TYPE_3__ {float cur_db; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ obs_fader_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

float FUNC2(obs_fader_t *fader)
{
	if (!fader)
		return 0.0f;

	FUNC0(&fader->mutex);
	const float db = fader->cur_db;
	FUNC1(&fader->mutex);

	return db;
}