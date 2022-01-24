#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ obs_hotkey_t ;
typedef  int /*<<< orphan*/  obs_data_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static inline bool FUNC4(void *data, size_t idx,
				    obs_hotkey_t *hotkey)
{
	FUNC0(idx);

	obs_data_array_t *hotkey_data = FUNC3(hotkey);
	FUNC2(data, hotkey->name, hotkey_data);
	FUNC1(hotkey_data);
	return true;
}