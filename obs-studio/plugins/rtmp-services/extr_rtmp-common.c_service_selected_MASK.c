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
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,char const**) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC8(obs_properties_t *props, obs_property_t *p,
			     obs_data_t *settings)
{
	const char *name = FUNC2(settings, "service");
	json_t *root = FUNC5(props);
	json_t *service;
	const char *new_name;

	if (!name || !*name)
		return false;

	service = FUNC1(root, name, &new_name);
	if (!service) {
		const char *server = FUNC2(settings, "server");

		FUNC6(p, 0, name, name);
		FUNC7(p, 0, true);

		p = FUNC4(props, "server");
		FUNC6(p, 0, server, server);
		FUNC7(p, 0, true);
		return true;
	}
	if (new_name) {
		name = new_name;
		FUNC3(settings, "service", name);
	}

	FUNC0(FUNC4(props, "server"), service, name);

	return true;
}