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
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  obs_data_array_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(obs_data_t *package,
		       bool (*enum_func)(void *param, obs_data_t *file),
		       void *param)
{
	obs_data_array_t *array = FUNC3(package, "files");
	size_t num;

	if (!array)
		return;

	num = FUNC0(array);

	for (size_t i = 0; i < num; i++) {
		obs_data_t *file = FUNC1(array, i);
		bool continue_enum = enum_func(param, file);
		FUNC4(file);

		if (!continue_enum)
			break;
	}

	FUNC2(array);
}