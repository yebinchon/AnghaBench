#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {TYPE_2__ socket_dir; int /*<<< orphan*/  push_reconnect; int /*<<< orphan*/  auto_push; } ;
typedef  TYPE_1__ ngx_rtmp_auto_push_conf_t ;
typedef  int /*<<< orphan*/  ngx_cycle_t ;

/* Variables and functions */
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 

__attribute__((used)) static char *
FUNC3(ngx_cycle_t *cycle, void *conf)
{
    ngx_rtmp_auto_push_conf_t      *apcf = conf;

    FUNC1(apcf->auto_push, 0);
    FUNC0(apcf->push_reconnect, 100);

    if (apcf->socket_dir.len == 0) {
        FUNC2(&apcf->socket_dir, "/tmp");
    }

    return NGX_CONF_OK;
}