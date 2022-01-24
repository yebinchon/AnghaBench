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
struct obs_source {int dummy; } ;
typedef  int /*<<< orphan*/  obs_hotkey_t ;
typedef  int /*<<< orphan*/ * obs_hotkey_pair_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_source*) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_source*,int) ; 

__attribute__((used)) static bool FUNC3(void *data, obs_hotkey_pair_id id,
				     obs_hotkey_t *key, bool pressed)
{
	FUNC0(id);
	FUNC0(key);

	struct obs_source *source = data;

	if (!pressed || !FUNC1(source))
		return false;

	FUNC2(source, false);
	return true;
}