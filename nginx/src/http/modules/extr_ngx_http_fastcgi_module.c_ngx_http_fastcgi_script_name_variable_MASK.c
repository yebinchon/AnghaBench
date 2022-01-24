#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_16__ {int len; int valid; char* data; scalar_t__ not_found; scalar_t__ no_cacheable; } ;
typedef  TYPE_3__ ngx_http_variable_value_t ;
struct TYPE_17__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_4__ ngx_http_request_t ;
struct TYPE_15__ {int len; int /*<<< orphan*/  data; } ;
struct TYPE_18__ {TYPE_2__ index; } ;
typedef  TYPE_5__ ngx_http_fastcgi_loc_conf_t ;
struct TYPE_14__ {int len; char* data; } ;
struct TYPE_19__ {TYPE_1__ script_name; } ;
typedef  TYPE_6__ ngx_http_fastcgi_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  ngx_http_fastcgi_module ; 
 TYPE_6__* FUNC1 (TYPE_4__*,TYPE_5__*) ; 
 TYPE_5__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    u_char                       *p;
    ngx_http_fastcgi_ctx_t       *f;
    ngx_http_fastcgi_loc_conf_t  *flcf;

    flcf = FUNC2(r, ngx_http_fastcgi_module);

    f = FUNC1(r, flcf);

    if (f == NULL) {
        return NGX_ERROR;
    }

    if (f->script_name.len == 0
        || f->script_name.data[f->script_name.len - 1] != '/')
    {
        v->len = f->script_name.len;
        v->valid = 1;
        v->no_cacheable = 0;
        v->not_found = 0;
        v->data = f->script_name.data;

        return NGX_OK;
    }

    v->len = f->script_name.len + flcf->index.len;

    v->data = FUNC4(r->pool, v->len);
    if (v->data == NULL) {
        return NGX_ERROR;
    }

    p = FUNC0(v->data, f->script_name.data, f->script_name.len);
    FUNC3(p, flcf->index.data, flcf->index.len);

    return NGX_OK;
}