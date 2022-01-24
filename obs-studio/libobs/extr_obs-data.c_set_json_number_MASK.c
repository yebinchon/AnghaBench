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
typedef  int /*<<< orphan*/  obs_data_item_t ;
typedef  int /*<<< orphan*/  json_t ;
typedef  enum obs_data_number_type { ____Placeholder_obs_data_number_type } obs_data_number_type ;

/* Variables and functions */
 int OBS_DATA_NUM_INT ; 
 int /*<<< orphan*/  FUNC0 (long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 double FUNC3 (int /*<<< orphan*/ *) ; 
 long long FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC6(json_t *json, const char *name,
				   obs_data_item_t *item)
{
	enum obs_data_number_type type = FUNC5(item);

	if (type == OBS_DATA_NUM_INT) {
		long long val = FUNC4(item);
		FUNC1(json, name, FUNC0(val));
	} else {
		double val = FUNC3(item);
		FUNC1(json, name, FUNC2(val));
	}
}