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
struct save_bindings_helper_t {int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  obs_hotkey_t ;
typedef  int /*<<< orphan*/  obs_data_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct save_bindings_helper_t*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  save_bindings_helper ; 

__attribute__((used)) static inline obs_data_array_t *FUNC2(obs_hotkey_t *hotkey)
{
	obs_data_array_t *data = FUNC1();

	struct save_bindings_helper_t arg = {data, hotkey};
	FUNC0(save_bindings_helper, &arg);

	return data;
}