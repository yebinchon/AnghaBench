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
struct TYPE_2__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  xclient; int /*<<< orphan*/  pass_error_message; int /*<<< orphan*/  enable; } ;
typedef  TYPE_1__ ngx_mail_proxy_conf_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ngx_pagesize ; 

__attribute__((used)) static char *
FUNC3(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_mail_proxy_conf_t *prev = parent;
    ngx_mail_proxy_conf_t *conf = child;

    FUNC2(conf->enable, prev->enable, 0);
    FUNC2(conf->pass_error_message, prev->pass_error_message, 0);
    FUNC2(conf->xclient, prev->xclient, 1);
    FUNC1(conf->buffer_size, prev->buffer_size,
                              (size_t) ngx_pagesize);
    FUNC0(conf->timeout, prev->timeout, 24 * 60 * 60000);

    return NGX_CONF_OK;
}