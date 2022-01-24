#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_11__ {scalar_t__ data; scalar_t__ len; } ;
struct TYPE_12__ {int default_port; int uri_part; TYPE_10__ url; scalar_t__ err; } ;
typedef  TYPE_1__ ngx_url_t ;
struct TYPE_13__ {scalar_t__ data; scalar_t__ len; } ;
typedef  TYPE_2__ ngx_str_t ;
struct TYPE_14__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ ngx_conf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,char*,scalar_t__,TYPE_10__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ngx_url_t *
FUNC4(ngx_conf_t *cf, ngx_str_t *url)
{
    ngx_url_t  *u;
    size_t      add;

    add = 0;

    u = FUNC2(cf->pool, sizeof(ngx_url_t));
    if (u == NULL) {
        return NULL;
    }

    if (FUNC3(url->data, (u_char *) "http://", 7) == 0) {
        add = 7;
    }

    u->url.len = url->len - add;
    u->url.data = url->data + add;
    u->default_port = 80;
    u->uri_part = 1;

    if (FUNC1(cf->pool, u) != NGX_OK) {
        if (u->err) {
            FUNC0(NGX_LOG_EMERG, cf, 0,
                    "%s in url \"%V\"", u->err, &u->url);
        }
        return NULL;
    }

    return u;
}