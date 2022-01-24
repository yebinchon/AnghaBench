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
typedef  int /*<<< orphan*/  obs_data_item_t ;
typedef  int /*<<< orphan*/  json_t ;
typedef  enum obs_data_type { ____Placeholder_obs_data_type } obs_data_type ;

/* Variables and functions */
 int OBS_DATA_ARRAY ; 
 int OBS_DATA_BOOLEAN ; 
 int OBS_DATA_NUMBER ; 
 int OBS_DATA_OBJECT ; 
 int OBS_DATA_STRING ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static json_t *FUNC11(obs_data_t *data)
{
	json_t *json = FUNC1();
	obs_data_item_t *item = NULL;

	for (item = FUNC2(data); item; FUNC5(&item)) {
		enum obs_data_type type = FUNC3(item);
		const char *name = FUNC0(item);

		if (!FUNC4(item))
			continue;

		if (type == OBS_DATA_STRING)
			FUNC10(json, name, item);
		else if (type == OBS_DATA_NUMBER)
			FUNC8(json, name, item);
		else if (type == OBS_DATA_BOOLEAN)
			FUNC7(json, name, item);
		else if (type == OBS_DATA_OBJECT)
			FUNC9(json, name, item);
		else if (type == OBS_DATA_ARRAY)
			FUNC6(json, name, item);
	}

	return json;
}