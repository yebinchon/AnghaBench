#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_16__ {char* data; scalar_t__ len; } ;
typedef  TYPE_3__ ngx_str_t ;
struct TYPE_17__ {size_t variables; int complete_lengths; int complete_values; int /*<<< orphan*/ ** values; int /*<<< orphan*/ ** lengths; TYPE_3__* source; TYPE_7__* cf; } ;
typedef  TYPE_4__ ngx_http_script_compile_t ;
struct TYPE_15__ {scalar_t__ len; char* data; } ;
struct TYPE_18__ {int /*<<< orphan*/ * values; int /*<<< orphan*/ * lengths; TYPE_2__ name; } ;
typedef  TYPE_5__ ngx_http_index_t ;
struct TYPE_19__ {scalar_t__ max_index_len; int /*<<< orphan*/ * indices; } ;
typedef  TYPE_6__ ngx_http_index_loc_conf_t ;
struct TYPE_20__ {TYPE_1__* args; int /*<<< orphan*/  pool; } ;
typedef  TYPE_7__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_14__ {size_t nelts; TYPE_3__* elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  NGX_LOG_WARN ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 size_t FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 

__attribute__((used)) static char *
FUNC6(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_index_loc_conf_t *ilcf = conf;

    ngx_str_t                  *value;
    ngx_uint_t                  i, n;
    ngx_http_index_t           *index;
    ngx_http_script_compile_t   sc;

    if (ilcf->indices == NULL) {
        ilcf->indices = FUNC0(cf->pool, 2, sizeof(ngx_http_index_t));
        if (ilcf->indices == NULL) {
            return NGX_CONF_ERROR;
        }
    }

    value = cf->args->elts;

    for (i = 1; i < cf->args->nelts; i++) {

        if (value[i].data[0] == '/' && i != cf->args->nelts - 1) {
            FUNC2(NGX_LOG_WARN, cf, 0,
                               "only the last index in \"index\" directive "
                               "should be absolute");
        }

        if (value[i].len == 0) {
            FUNC2(NGX_LOG_EMERG, cf, 0,
                               "index \"%V\" in \"index\" directive is invalid",
                               &value[1]);
            return NGX_CONF_ERROR;
        }

        index = FUNC1(ilcf->indices);
        if (index == NULL) {
            return NGX_CONF_ERROR;
        }

        index->name.len = value[i].len;
        index->name.data = value[i].data;
        index->lengths = NULL;
        index->values = NULL;

        n = FUNC4(&value[i]);

        if (n == 0) {
            if (ilcf->max_index_len < index->name.len) {
                ilcf->max_index_len = index->name.len;
            }

            if (index->name.data[0] == '/') {
                continue;
            }

            /* include the terminating '\0' to the length to use ngx_memcpy() */
            index->name.len++;

            continue;
        }

        FUNC5(&sc, sizeof(ngx_http_script_compile_t));

        sc.cf = cf;
        sc.source = &value[i];
        sc.lengths = &index->lengths;
        sc.values = &index->values;
        sc.variables = n;
        sc.complete_lengths = 1;
        sc.complete_values = 1;

        if (FUNC3(&sc) != NGX_OK) {
            return NGX_CONF_ERROR;
        }
    }

    return NGX_CONF_OK;
}