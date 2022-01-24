#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int time_t ;
typedef  size_t ngx_uint_t ;
struct TYPE_9__ {scalar_t__ data; scalar_t__ len; } ;
typedef  TYPE_2__ ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_10__ {int open_file_cache_valid; scalar_t__ open_file_cache_min_uses; int /*<<< orphan*/ * open_file_cache; } ;
typedef  TYPE_3__ ngx_http_log_loc_conf_t ;
struct TYPE_11__ {int /*<<< orphan*/  pool; TYPE_1__* args; } ;
typedef  TYPE_4__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_8__ {size_t nelts; TYPE_2__* elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/ * NGX_CONF_UNSET_PTR ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC3 (TYPE_2__*,int) ; 
 scalar_t__ FUNC4 (scalar_t__,char*) ; 
 scalar_t__ FUNC5 (scalar_t__,char*,int) ; 

__attribute__((used)) static char *
FUNC6(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_log_loc_conf_t *llcf = conf;

    time_t       inactive, valid;
    ngx_str_t   *value, s;
    ngx_int_t    max, min_uses;
    ngx_uint_t   i;

    if (llcf->open_file_cache != NGX_CONF_UNSET_PTR) {
        return "is duplicate";
    }

    value = cf->args->elts;

    max = 0;
    inactive = 10;
    valid = 60;
    min_uses = 1;

    for (i = 1; i < cf->args->nelts; i++) {

        if (FUNC5(value[i].data, "max=", 4) == 0) {

            max = FUNC0(value[i].data + 4, value[i].len - 4);
            if (max == NGX_ERROR) {
                goto failed;
            }

            continue;
        }

        if (FUNC5(value[i].data, "inactive=", 9) == 0) {

            s.len = value[i].len - 9;
            s.data = value[i].data + 9;

            inactive = FUNC3(&s, 1);
            if (inactive == (time_t) NGX_ERROR) {
                goto failed;
            }

            continue;
        }

        if (FUNC5(value[i].data, "min_uses=", 9) == 0) {

            min_uses = FUNC0(value[i].data + 9, value[i].len - 9);
            if (min_uses == NGX_ERROR) {
                goto failed;
            }

            continue;
        }

        if (FUNC5(value[i].data, "valid=", 6) == 0) {

            s.len = value[i].len - 6;
            s.data = value[i].data + 6;

            valid = FUNC3(&s, 1);
            if (valid == (time_t) NGX_ERROR) {
                goto failed;
            }

            continue;
        }

        if (FUNC4(value[i].data, "off") == 0) {

            llcf->open_file_cache = NULL;

            continue;
        }

    failed:

        FUNC1(NGX_LOG_EMERG, cf, 0,
                           "invalid \"open_log_file_cache\" parameter \"%V\"",
                           &value[i]);
        return NGX_CONF_ERROR;
    }

    if (llcf->open_file_cache == NULL) {
        return NGX_CONF_OK;
    }

    if (max == 0) {
        FUNC1(NGX_LOG_EMERG, cf, 0,
                        "\"open_log_file_cache\" must have \"max\" parameter");
        return NGX_CONF_ERROR;
    }

    llcf->open_file_cache = FUNC2(cf->pool, max, inactive);

    if (llcf->open_file_cache) {

        llcf->open_file_cache_valid = valid;
        llcf->open_file_cache_min_uses = min_uses;

        return NGX_CONF_OK;
    }

    return NGX_CONF_ERROR;
}