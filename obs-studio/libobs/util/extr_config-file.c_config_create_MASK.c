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
struct config_data {int /*<<< orphan*/  file; } ;
typedef  struct config_data config_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_data*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 struct config_data* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct config_data*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 

config_t *FUNC6(const char *file)
{
	struct config_data *config;
	FILE *f;

	f = FUNC5(file, "wb");
	if (!f)
		return NULL;
	FUNC3(f);

	config = FUNC2(sizeof(struct config_data));

	if (!FUNC4(config)) {
		FUNC0(config);
		return NULL;
	}

	config->file = FUNC1(file);
	return config;
}