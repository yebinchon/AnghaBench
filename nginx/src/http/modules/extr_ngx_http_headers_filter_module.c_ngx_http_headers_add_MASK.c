#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_20__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ ngx_str_t ;
struct TYPE_18__ {int /*<<< orphan*/  data; scalar_t__ len; } ;
struct TYPE_21__ {int /*<<< orphan*/ * handler; scalar_t__ offset; TYPE_1__ name; } ;
typedef  TYPE_4__ ngx_http_set_header_t ;
struct TYPE_22__ {int /*<<< orphan*/ * headers; } ;
typedef  TYPE_5__ ngx_http_headers_conf_t ;
struct TYPE_24__ {struct TYPE_24__* complex_value; TYPE_3__* value; TYPE_8__* cf; } ;
struct TYPE_23__ {int always; TYPE_7__ value; int /*<<< orphan*/ * handler; scalar_t__ offset; TYPE_3__ key; } ;
typedef  TYPE_6__ ngx_http_header_val_t ;
typedef  int /*<<< orphan*/  ngx_http_complex_value_t ;
typedef  TYPE_7__ ngx_http_compile_complex_value_t ;
struct TYPE_25__ {TYPE_2__* args; int /*<<< orphan*/  pool; } ;
typedef  TYPE_8__ ngx_conf_t ;
struct TYPE_26__ {int offset; } ;
typedef  TYPE_9__ ngx_command_t ;
typedef  int /*<<< orphan*/  ngx_array_t ;
struct TYPE_19__ {int nelts; TYPE_3__* elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 int /*<<< orphan*/ * ngx_http_add_header ; 
 scalar_t__ FUNC3 (TYPE_7__*) ; 
 TYPE_4__* ngx_http_set_headers ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static char *
FUNC7(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_headers_conf_t *hcf = conf;

    ngx_str_t                          *value;
    ngx_uint_t                          i;
    ngx_array_t                       **headers;
    ngx_http_header_val_t              *hv;
    ngx_http_set_header_t              *set;
    ngx_http_compile_complex_value_t    ccv;

    value = cf->args->elts;

    headers = (ngx_array_t **) ((char *) hcf + cmd->offset);

    if (*headers == NULL) {
        *headers = FUNC0(cf->pool, 1,
                                    sizeof(ngx_http_header_val_t));
        if (*headers == NULL) {
            return NGX_CONF_ERROR;
        }
    }

    hv = FUNC1(*headers);
    if (hv == NULL) {
        return NGX_CONF_ERROR;
    }

    hv->key = value[1];
    hv->handler = NULL;
    hv->offset = 0;
    hv->always = 0;

    if (headers == &hcf->headers) {
        hv->handler = ngx_http_add_header;

        set = ngx_http_set_headers;
        for (i = 0; set[i].name.len; i++) {
            if (FUNC5(value[1].data, set[i].name.data) != 0) {
                continue;
            }

            hv->offset = set[i].offset;
            hv->handler = set[i].handler;

            break;
        }
    }

    if (value[2].len == 0) {
        FUNC4(&hv->value, sizeof(ngx_http_complex_value_t));

    } else {
        FUNC4(&ccv, sizeof(ngx_http_compile_complex_value_t));

        ccv.cf = cf;
        ccv.value = &value[2];
        ccv.complex_value = &hv->value;

        if (FUNC3(&ccv) != NGX_OK) {
            return NGX_CONF_ERROR;
        }
    }

    if (cf->args->nelts == 3) {
        return NGX_CONF_OK;
    }

    if (FUNC6(value[3].data, "always") != 0) {
        FUNC2(NGX_LOG_EMERG, cf, 0,
                           "invalid parameter \"%V\"", &value[3]);
        return NGX_CONF_ERROR;
    }

    hv->always = 1;

    return NGX_CONF_OK;
}