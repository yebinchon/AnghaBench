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
struct TYPE_6__ {scalar_t__ use; } ;
typedef  TYPE_1__ ngx_event_conf_t ;
struct TYPE_7__ {scalar_t__ connection_n; int /*<<< orphan*/  log; int /*<<< orphan*/  conf_ctx; } ;
typedef  TYPE_2__ ngx_cycle_t ;
struct TYPE_8__ {scalar_t__ ctx_index; } ;

/* Variables and functions */
 scalar_t__ FD_SETSIZE ; 
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  ngx_event_core_module ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 TYPE_3__ ngx_select_module ; 

__attribute__((used)) static char *
FUNC2(ngx_cycle_t *cycle, void *conf)
{
    ngx_event_conf_t  *ecf;

    ecf = FUNC0(cycle->conf_ctx, ngx_event_core_module);

    if (ecf->use != ngx_select_module.ctx_index) {
        return NGX_CONF_OK;
    }

    /* disable warning: the default FD_SETSIZE is 1024U in FreeBSD 5.x */

    if (cycle->connection_n > FD_SETSIZE) {
        FUNC1(NGX_LOG_EMERG, cycle->log, 0,
                      "the maximum number of files "
                      "supported by select() is %ud", FD_SETSIZE);
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}