#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int status; int htaccess; int /*<<< orphan*/  value_len; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ php_dir_entry ;
struct TYPE_7__ {int /*<<< orphan*/  config; } ;
typedef  TYPE_2__ php_conf_rec ;
typedef  int /*<<< orphan*/  e ;
struct TYPE_8__ {int override; int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ cmd_parms ;

/* Variables and functions */
 int ACCESS_CONF ; 
 int RSRC_CONF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static const char *FUNC6(cmd_parms *cmd, void *dummy, const char *name, const char *value, int status)
{
	php_conf_rec *d = dummy;
	php_dir_entry e;

	FUNC1((stderr, "Getting %s=%s for %p (%d)\n", name, value, dummy, FUNC4(&d->config)));

	if (!FUNC3(value, "none", sizeof("none"))) {
		value = "";
	}

	e.value = FUNC0(cmd->pool, value);
	e.value_len = FUNC2(value);
	e.status = status;
	e.htaccess = ((cmd->override & (RSRC_CONF|ACCESS_CONF)) == 0);

	FUNC5(&d->config, (char *) name, FUNC2(name), &e, sizeof(e));
	return NULL;
}