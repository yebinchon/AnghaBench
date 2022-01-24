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
struct TYPE_5__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  callback_mutex; int /*<<< orphan*/  callbacks; } ;
typedef  TYPE_1__ obs_fader_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(obs_fader_t *fader)
{
	if (!fader)
		return;

	FUNC2(fader);
	FUNC1(fader->callbacks);
	FUNC3(&fader->callback_mutex);
	FUNC3(&fader->mutex);

	FUNC0(fader);
}