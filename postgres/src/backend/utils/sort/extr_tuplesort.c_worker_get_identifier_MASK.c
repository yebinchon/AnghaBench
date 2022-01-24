#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* shared; } ;
typedef  TYPE_1__ Tuplesortstate ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  currentWorker; } ;
typedef  TYPE_2__ Sharedsort ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(Tuplesortstate *state)
{
	Sharedsort *shared = state->shared;
	int			worker;

	FUNC0(FUNC3(state));

	FUNC1(&shared->mutex);
	worker = shared->currentWorker++;
	FUNC2(&shared->mutex);

	return worker;
}