#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_6__ {size_t len; int valid; int not_found; scalar_t__ no_cacheable; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ ngx_http_variable_value_t ;
struct TYPE_7__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  GeoIPRecord ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    char         *val;
    size_t        len;
    GeoIPRecord  *gr;

    gr = FUNC1(r);
    if (gr == NULL) {
        goto not_found;
    }

    val = *(char **) ((char *) gr + data);
    if (val == NULL) {
        goto no_value;
    }

    len = FUNC4(val);
    v->data = FUNC3(r->pool, len);
    if (v->data == NULL) {
        FUNC0(gr);
        return NGX_ERROR;
    }

    FUNC2(v->data, val, len);

    v->len = len;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    FUNC0(gr);

    return NGX_OK;

no_value:

    FUNC0(gr);

not_found:

    v->not_found = 1;

    return NGX_OK;
}