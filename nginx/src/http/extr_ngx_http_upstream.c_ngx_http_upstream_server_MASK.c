#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int time_t ;
struct TYPE_16__ {int /*<<< orphan*/ * data; scalar_t__ len; } ;
struct TYPE_15__ {int backup; int down; int default_port; int fail_timeout; void* max_fails; void* max_conns; void* weight; int /*<<< orphan*/  naddrs; int /*<<< orphan*/  addrs; TYPE_3__ url; TYPE_3__ name; scalar_t__ err; } ;
typedef  TYPE_2__ ngx_url_t ;
typedef  size_t ngx_uint_t ;
typedef  TYPE_3__ ngx_str_t ;
typedef  void* ngx_int_t ;
struct TYPE_17__ {int flags; int /*<<< orphan*/  servers; } ;
typedef  TYPE_4__ ngx_http_upstream_srv_conf_t ;
typedef  TYPE_2__ ngx_http_upstream_server_t ;
struct TYPE_18__ {int /*<<< orphan*/  pool; TYPE_1__* args; } ;
typedef  TYPE_6__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_14__ {size_t nelts; TYPE_3__* elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 void* NGX_ERROR ; 
 int NGX_HTTP_UPSTREAM_BACKUP ; 
 int NGX_HTTP_UPSTREAM_DOWN ; 
 int NGX_HTTP_UPSTREAM_FAIL_TIMEOUT ; 
 int NGX_HTTP_UPSTREAM_MAX_CONNS ; 
 int NGX_HTTP_UPSTREAM_MAX_FAILS ; 
 int NGX_HTTP_UPSTREAM_WEIGHT ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 scalar_t__ NGX_OK ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ,char*,TYPE_3__*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (TYPE_3__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static char *
FUNC8(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_upstream_srv_conf_t  *uscf = conf;

    time_t                       fail_timeout;
    ngx_str_t                   *value, s;
    ngx_url_t                    u;
    ngx_int_t                    weight, max_conns, max_fails;
    ngx_uint_t                   i;
    ngx_http_upstream_server_t  *us;

    us = FUNC0(uscf->servers);
    if (us == NULL) {
        return NGX_CONF_ERROR;
    }

    FUNC3(us, sizeof(ngx_http_upstream_server_t));

    value = cf->args->elts;

    weight = 1;
    max_conns = 0;
    max_fails = 1;
    fail_timeout = 10;

    for (i = 2; i < cf->args->nelts; i++) {

        if (FUNC7(value[i].data, "weight=", 7) == 0) {

            if (!(uscf->flags & NGX_HTTP_UPSTREAM_WEIGHT)) {
                goto not_supported;
            }

            weight = FUNC1(&value[i].data[7], value[i].len - 7);

            if (weight == NGX_ERROR || weight == 0) {
                goto invalid;
            }

            continue;
        }

        if (FUNC7(value[i].data, "max_conns=", 10) == 0) {

            if (!(uscf->flags & NGX_HTTP_UPSTREAM_MAX_CONNS)) {
                goto not_supported;
            }

            max_conns = FUNC1(&value[i].data[10], value[i].len - 10);

            if (max_conns == NGX_ERROR) {
                goto invalid;
            }

            continue;
        }

        if (FUNC7(value[i].data, "max_fails=", 10) == 0) {

            if (!(uscf->flags & NGX_HTTP_UPSTREAM_MAX_FAILS)) {
                goto not_supported;
            }

            max_fails = FUNC1(&value[i].data[10], value[i].len - 10);

            if (max_fails == NGX_ERROR) {
                goto invalid;
            }

            continue;
        }

        if (FUNC7(value[i].data, "fail_timeout=", 13) == 0) {

            if (!(uscf->flags & NGX_HTTP_UPSTREAM_FAIL_TIMEOUT)) {
                goto not_supported;
            }

            s.len = value[i].len - 13;
            s.data = &value[i].data[13];

            fail_timeout = FUNC4(&s, 1);

            if (fail_timeout == (time_t) NGX_ERROR) {
                goto invalid;
            }

            continue;
        }

        if (FUNC6(value[i].data, "backup") == 0) {

            if (!(uscf->flags & NGX_HTTP_UPSTREAM_BACKUP)) {
                goto not_supported;
            }

            us->backup = 1;

            continue;
        }

        if (FUNC6(value[i].data, "down") == 0) {

            if (!(uscf->flags & NGX_HTTP_UPSTREAM_DOWN)) {
                goto not_supported;
            }

            us->down = 1;

            continue;
        }

        goto invalid;
    }

    FUNC3(&u, sizeof(ngx_url_t));

    u.url = value[1];
    u.default_port = 80;

    if (FUNC5(cf->pool, &u) != NGX_OK) {
        if (u.err) {
            FUNC2(NGX_LOG_EMERG, cf, 0,
                               "%s in upstream \"%V\"", u.err, &u.url);
        }

        return NGX_CONF_ERROR;
    }

    us->name = u.url;
    us->addrs = u.addrs;
    us->naddrs = u.naddrs;
    us->weight = weight;
    us->max_conns = max_conns;
    us->max_fails = max_fails;
    us->fail_timeout = fail_timeout;

    return NGX_CONF_OK;

invalid:

    FUNC2(NGX_LOG_EMERG, cf, 0,
                       "invalid parameter \"%V\"", &value[i]);

    return NGX_CONF_ERROR;

not_supported:

    FUNC2(NGX_LOG_EMERG, cf, 0,
                       "balancing method does not support parameter \"%V\"",
                       &value[i]);

    return NGX_CONF_ERROR;
}