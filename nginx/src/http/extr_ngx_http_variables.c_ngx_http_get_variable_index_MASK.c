#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_16__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ ngx_str_t ;
typedef  size_t ngx_int_t ;
struct TYPE_15__ {scalar_t__ len; int /*<<< orphan*/ * data; } ;
struct TYPE_17__ {size_t index; scalar_t__ flags; scalar_t__ data; int /*<<< orphan*/ * get_handler; int /*<<< orphan*/ * set_handler; TYPE_1__ name; } ;
typedef  TYPE_3__ ngx_http_variable_t ;
struct TYPE_14__ {size_t nelts; TYPE_3__* elts; } ;
struct TYPE_18__ {TYPE_12__ variables; } ;
typedef  TYPE_4__ ngx_http_core_main_conf_t ;
struct TYPE_19__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_5__ ngx_conf_t ;

/* Variables and functions */
 size_t NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (TYPE_12__*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_3__* FUNC1 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

ngx_int_t
FUNC7(ngx_conf_t *cf, ngx_str_t *name)
{
    ngx_uint_t                  i;
    ngx_http_variable_t        *v;
    ngx_http_core_main_conf_t  *cmcf;

    if (name->len == 0) {
        FUNC2(NGX_LOG_EMERG, cf, 0,
                           "invalid variable name \"$\"");
        return NGX_ERROR;
    }

    cmcf = FUNC3(cf, ngx_http_core_module);

    v = cmcf->variables.elts;

    if (v == NULL) {
        if (FUNC0(&cmcf->variables, cf->pool, 4,
                           sizeof(ngx_http_variable_t))
            != NGX_OK)
        {
            return NGX_ERROR;
        }

    } else {
        for (i = 0; i < cmcf->variables.nelts; i++) {
            if (name->len != v[i].name.len
                || FUNC6(name->data, v[i].name.data, name->len) != 0)
            {
                continue;
            }

            return i;
        }
    }

    v = FUNC1(&cmcf->variables);
    if (v == NULL) {
        return NGX_ERROR;
    }

    v->name.len = name->len;
    v->name.data = FUNC4(cf->pool, name->len);
    if (v->name.data == NULL) {
        return NGX_ERROR;
    }

    FUNC5(v->name.data, name->data, name->len);

    v->set_handler = NULL;
    v->get_handler = NULL;
    v->data = 0;
    v->flags = 0;
    v->index = cmcf->variables.nelts - 1;

    return v->index;
}