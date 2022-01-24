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
struct TYPE_3__ {int active; int reset; int looping; int /*<<< orphan*/  sem; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ mp_media_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(mp_media_t *m, bool loop)
{
	FUNC1(&m->mutex);

	if (m->active)
		m->reset = true;

	m->looping = loop;
	m->active = true;

	FUNC2(&m->mutex);

	FUNC0(m->sem);
}