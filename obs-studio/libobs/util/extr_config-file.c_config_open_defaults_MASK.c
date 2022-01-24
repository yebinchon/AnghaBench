#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  defaults; } ;
typedef  TYPE_1__ config_t ;

/* Variables and functions */
 int CONFIG_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 

int FUNC1(config_t *config, const char *file)
{
	if (!config)
		return CONFIG_ERROR;

	return FUNC0(&config->defaults, file, false);
}