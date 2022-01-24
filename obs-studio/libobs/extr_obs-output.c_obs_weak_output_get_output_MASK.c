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
struct TYPE_3__ {int /*<<< orphan*/ * output; int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ obs_weak_output_t ;
typedef  int /*<<< orphan*/  obs_output_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

obs_output_t *FUNC1(obs_weak_output_t *weak)
{
	if (!weak)
		return NULL;

	if (FUNC0(&weak->ref))
		return weak->output;

	return NULL;
}