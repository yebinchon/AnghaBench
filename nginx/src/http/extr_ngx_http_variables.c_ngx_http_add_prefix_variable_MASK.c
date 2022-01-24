#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_17__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ ngx_str_t ;
struct TYPE_16__ {scalar_t__ len; int /*<<< orphan*/ * data; } ;
struct TYPE_18__ {int flags; scalar_t__ index; scalar_t__ data; int /*<<< orphan*/ * get_handler; int /*<<< orphan*/ * set_handler; TYPE_1__ name; } ;
typedef  TYPE_3__ ngx_http_variable_t ;
struct TYPE_15__ {size_t nelts; TYPE_3__* elts; } ;
struct TYPE_19__ {TYPE_14__ prefix_variables; } ;
typedef  TYPE_4__ ngx_http_core_main_conf_t ;
struct TYPE_20__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_5__ ngx_conf_t ;

/* Variables and functions */
 int NGX_HTTP_VAR_CHANGEABLE ; 
 size_t NGX_HTTP_VAR_WEAK ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 TYPE_3__* FUNC0 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 TYPE_4__* FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static ngx_http_variable_t *
FUNC6(ngx_conf_t *cf, ngx_str_t *name, ngx_uint_t flags)
{
    ngx_uint_t                  i;
    ngx_http_variable_t        *v;
    ngx_http_core_main_conf_t  *cmcf;

    cmcf = FUNC2(cf, ngx_http_core_module);

    v = cmcf->prefix_variables.elts;
    for (i = 0; i < cmcf->prefix_variables.nelts; i++) {
        if (name->len != v[i].name.len
            || FUNC5(name->data, v[i].name.data, name->len) != 0)
        {
            continue;
        }

        v = &v[i];

        if (!(v->flags & NGX_HTTP_VAR_CHANGEABLE)) {
            FUNC1(NGX_LOG_EMERG, cf, 0,
                               "the duplicate \"%V\" variable", name);
            return NULL;
        }

        if (!(flags & NGX_HTTP_VAR_WEAK)) {
            v->flags &= ~NGX_HTTP_VAR_WEAK;
        }

        return v;
    }

    v = FUNC0(&cmcf->prefix_variables);
    if (v == NULL) {
        return NULL;
    }

    v->name.len = name->len;
    v->name.data = FUNC3(cf->pool, name->len);
    if (v->name.data == NULL) {
        return NULL;
    }

    FUNC4(v->name.data, name->data, name->len);

    v->set_handler = NULL;
    v->get_handler = NULL;
    v->data = 0;
    v->flags = flags;
    v->index = 0;

    return v;
}