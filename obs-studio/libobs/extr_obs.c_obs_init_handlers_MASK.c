#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  signals; int /*<<< orphan*/  procs; } ;

/* Variables and functions */
 TYPE_1__* obs ; 
 int /*<<< orphan*/  obs_signals ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline bool FUNC3(void)
{
	obs->signals = FUNC2();
	if (!obs->signals)
		return false;

	obs->procs = FUNC0();
	if (!obs->procs)
		return false;

	return FUNC1(obs->signals, obs_signals);
}