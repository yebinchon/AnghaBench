#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
typedef  size_t ngx_uint_t ;
struct TYPE_19__ {int len; char* data; } ;
typedef  TYPE_2__ ngx_str_t ;
struct TYPE_20__ {int no_referer; int blocked_referer; int server_names; TYPE_6__* keys; } ;
typedef  TYPE_3__ ngx_http_referer_conf_t ;
typedef  int /*<<< orphan*/  ngx_hash_keys_arrays_t ;
struct TYPE_21__ {TYPE_1__* args; int /*<<< orphan*/  pool; int /*<<< orphan*/  temp_pool; } ;
typedef  TYPE_4__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_22__ {int /*<<< orphan*/  temp_pool; int /*<<< orphan*/  pool; } ;
struct TYPE_18__ {size_t nelts; TYPE_2__* elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_HASH_SMALL ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_4__*,TYPE_6__*,TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*,TYPE_3__*,TYPE_2__*) ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

__attribute__((used)) static char *
FUNC8(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_referer_conf_t  *rlcf = conf;

    u_char      *p;
    ngx_str_t   *value, uri;
    ngx_uint_t   i;

    if (rlcf->keys == NULL) {
        rlcf->keys = FUNC4(cf->temp_pool, sizeof(ngx_hash_keys_arrays_t));
        if (rlcf->keys == NULL) {
            return NGX_CONF_ERROR;
        }

        rlcf->keys->pool = cf->pool;
        rlcf->keys->temp_pool = cf->pool;

        if (FUNC1(rlcf->keys, NGX_HASH_SMALL) != NGX_OK) {
            return NGX_CONF_ERROR;
        }
    }

    value = cf->args->elts;

    for (i = 1; i < cf->args->nelts; i++) {
        if (value[i].len == 0) {
            FUNC0(NGX_LOG_EMERG, cf, 0,
                               "invalid referer \"%V\"", &value[i]);
            return NGX_CONF_ERROR;
        }

        if (FUNC7(value[i].data, "none") == 0) {
            rlcf->no_referer = 1;
            continue;
        }

        if (FUNC7(value[i].data, "blocked") == 0) {
            rlcf->blocked_referer = 1;
            continue;
        }

        if (FUNC7(value[i].data, "server_names") == 0) {
            rlcf->server_names = 1;
            continue;
        }

        if (value[i].data[0] == '~') {
            if (FUNC3(cf, rlcf, &value[i]) != NGX_OK) {
                return NGX_CONF_ERROR;
            }

            continue;
        }

        FUNC5(&uri);

        p = (u_char *) FUNC6(value[i].data, '/');

        if (p) {
            uri.len = (value[i].data + value[i].len) - p;
            uri.data = p;
            value[i].len = p - value[i].data;
        }

        if (FUNC2(cf, rlcf->keys, &value[i], &uri) != NGX_OK) {
            return NGX_CONF_ERROR;
        }
    }

    return NGX_CONF_OK;
}