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
typedef  int /*<<< orphan*/  obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(obs_source_t *tr_dest, obs_source_t *tr_source)
{
	obs_source_t *old_children[2];

	if (tr_dest == tr_source)
		return;

	FUNC1(tr_source);
	FUNC1(tr_dest);

	FUNC2(tr_source);
	FUNC2(tr_dest);

	for (size_t i = 0; i < 2; i++)
		old_children[i] = FUNC0(tr_dest, tr_source, i);

	FUNC4(tr_dest);
	FUNC4(tr_source);

	for (size_t i = 0; i < 2; i++)
		FUNC3(old_children[i]);
}