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
typedef  int /*<<< orphan*/  zval ;
struct fpm_worker_pool_config_s {int /*<<< orphan*/  pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM_STYLE_DYNAMIC ; 
 int /*<<< orphan*/  PM_STYLE_ONDEMAND ; 
 int /*<<< orphan*/  PM_STYLE_STATIC ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static char *FUNC2(zval *value, void **config, intptr_t offset) /* {{{ */
{
	char *val = FUNC0(value);
	struct fpm_worker_pool_config_s  *c = *config;
	if (!FUNC1(val, "static")) {
		c->pm = PM_STYLE_STATIC;
	} else if (!FUNC1(val, "dynamic")) {
		c->pm = PM_STYLE_DYNAMIC;
	} else if (!FUNC1(val, "ondemand")) {
		c->pm = PM_STYLE_ONDEMAND;
	} else {
		return "invalid process manager (static, dynamic or ondemand)";
	}
	return NULL;
}