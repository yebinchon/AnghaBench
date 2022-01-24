#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_rtmp_relay_ctx_t ;
struct TYPE_4__ {int nbuckets; int /*<<< orphan*/  pull_reconnect; int /*<<< orphan*/  push_reconnect; int /*<<< orphan*/  buflen; int /*<<< orphan*/  session_relay; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ ngx_rtmp_relay_app_conf_t ;
struct TYPE_5__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ngx_conf_t ;

/* Variables and functions */
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static char *
FUNC3(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_rtmp_relay_app_conf_t  *prev = parent;
    ngx_rtmp_relay_app_conf_t  *conf = child;

    conf->ctx = FUNC2(cf->pool, sizeof(ngx_rtmp_relay_ctx_t *)
            * conf->nbuckets);

    FUNC1(conf->session_relay, prev->session_relay, 0);
    FUNC0(conf->buflen, prev->buflen, 5000);
    FUNC0(conf->push_reconnect, prev->push_reconnect,
            3000);
    FUNC0(conf->pull_reconnect, prev->pull_reconnect,
            3000);

    return NGX_CONF_OK;
}