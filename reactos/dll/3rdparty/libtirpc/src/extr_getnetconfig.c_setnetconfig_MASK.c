#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct netconfig_vars {int /*<<< orphan*/  nc_configs; scalar_t__ flag; int /*<<< orphan*/  valid; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  NC_NONETCONFIG ; 
 int /*<<< orphan*/  NC_VALID ; 
 int /*<<< orphan*/  NETCONFIG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct netconfig_vars*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  nc_error ; 
 int /*<<< orphan*/ * nc_file ; 
 TYPE_1__ ni ; 

void *
FUNC3()
{
    struct netconfig_vars *nc_vars;

    if ((nc_vars = (struct netconfig_vars *)FUNC2(sizeof
		(struct netconfig_vars))) == NULL) {
		return(NULL);
    }

    /*
     * For multiple calls, i.e. nc_file is not NULL, we just return the
     * handle without reopening the netconfig db.
     */
    ni.ref++;
    if ((nc_file != NULL) || (nc_file = FUNC0(NETCONFIG, "r")) != NULL) {
		nc_vars->valid = NC_VALID;
		nc_vars->flag = 0;
		nc_vars->nc_configs = ni.head;
		return ((void *)nc_vars);
    }
    ni.ref--;
    nc_error = NC_NONETCONFIG;
    FUNC1(nc_vars);
    return (NULL);
}