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
typedef  size_t ngx_uint_t ;
struct TYPE_2__ {int active; int /*<<< orphan*/  relay_redirect; int /*<<< orphan*/  update_strict; int /*<<< orphan*/  update_timeout; int /*<<< orphan*/  method; scalar_t__* url; } ;
typedef  TYPE_1__ ngx_rtmp_notify_app_conf_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_RTMP_NETCALL_HTTP_POST ; 
 size_t NGX_RTMP_NOTIFY_APP_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC4(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_rtmp_notify_app_conf_t *prev = parent;
    ngx_rtmp_notify_app_conf_t *conf = child;
    ngx_uint_t                  n;

    for (n = 0; n < NGX_RTMP_NOTIFY_APP_MAX; ++n) {
        FUNC1(conf->url[n], prev->url[n], NULL);
        if (conf->url[n]) {
            conf->active = 1;
        }
    }

    if (conf->active) {
        prev->active = 1;
    }

    FUNC2(conf->method, prev->method,
                              NGX_RTMP_NETCALL_HTTP_POST);
    FUNC0(conf->update_timeout, prev->update_timeout,
                              30000);
    FUNC3(conf->update_strict, prev->update_strict, 0);
    FUNC3(conf->relay_redirect, prev->relay_redirect, 0);

    return NGX_CONF_OK;
}