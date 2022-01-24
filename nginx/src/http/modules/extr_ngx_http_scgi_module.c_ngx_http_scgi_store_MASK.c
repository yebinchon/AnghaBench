#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ ngx_str_t ;
struct TYPE_14__ {int complete_lengths; int complete_values; int /*<<< orphan*/  variables; int /*<<< orphan*/ * values; int /*<<< orphan*/ * lengths; TYPE_3__* source; TYPE_6__* cf; } ;
typedef  TYPE_4__ ngx_http_script_compile_t ;
struct TYPE_12__ {int store; scalar_t__ cache; int /*<<< orphan*/  store_values; int /*<<< orphan*/  store_lengths; } ;
struct TYPE_15__ {TYPE_2__ upstream; } ;
typedef  TYPE_5__ ngx_http_scgi_loc_conf_t ;
struct TYPE_16__ {TYPE_1__* args; } ;
typedef  TYPE_6__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_11__ {TYPE_3__* elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int NGX_CONF_UNSET ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static char *
FUNC4(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_scgi_loc_conf_t *scf = conf;

    ngx_str_t                  *value;
    ngx_http_script_compile_t   sc;

    if (scf->upstream.store != NGX_CONF_UNSET) {
        return "is duplicate";
    }

    value = cf->args->elts;

    if (FUNC3(value[1].data, "off") == 0) {
        scf->upstream.store = 0;
        return NGX_CONF_OK;
    }

#if (NGX_HTTP_CACHE)
    if (scf->upstream.cache > 0) {
        return "is incompatible with \"scgi_cache\"";
    }
#endif

    scf->upstream.store = 1;

    if (FUNC3(value[1].data, "on") == 0) {
        return NGX_CONF_OK;
    }

    /* include the terminating '\0' into script */
    value[1].len++;

    FUNC2(&sc, sizeof(ngx_http_script_compile_t));

    sc.cf = cf;
    sc.source = &value[1];
    sc.lengths = &scf->upstream.store_lengths;
    sc.values = &scf->upstream.store_values;
    sc.variables = FUNC1(&value[1]);
    sc.complete_lengths = 1;
    sc.complete_values = 1;

    if (FUNC0(&sc) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}