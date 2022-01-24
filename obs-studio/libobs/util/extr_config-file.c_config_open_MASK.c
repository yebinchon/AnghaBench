#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct config_data {int dummy; } ;
typedef  enum config_open_type { ____Placeholder_config_open_type } config_open_type ;
struct TYPE_7__ {int /*<<< orphan*/  sections; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ config_t ;

/* Variables and functions */
 int CONFIG_ERROR ; 
 int CONFIG_OPEN_ALWAYS ; 
 int CONFIG_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(config_t **config, const char *file,
		enum config_open_type open_type)
{
	int errorcode;
	bool always_open = open_type == CONFIG_OPEN_ALWAYS;

	if (!config)
		return CONFIG_ERROR;

	*config = FUNC2(sizeof(struct config_data));
	if (!*config)
		return CONFIG_ERROR;

	if (!FUNC5(*config)) {
		FUNC0(*config);
		return CONFIG_ERROR;
	}

	(*config)->file = FUNC1(file);

	errorcode = FUNC4(&(*config)->sections, file, always_open);

	if (errorcode != CONFIG_SUCCESS) {
		FUNC3(*config);
		*config = NULL;
	}

	return errorcode;
}