#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_table_elt_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_7__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  headers_in; } ;
typedef  TYPE_1__ ngx_http_request_t ;
struct TYPE_8__ {int /*<<< orphan*/ * elts; } ;
typedef  TYPE_2__ ngx_array_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ ** FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC3(ngx_http_request_t *r, ngx_table_elt_t *h,
    ngx_uint_t offset)
{
    ngx_array_t       *headers;
    ngx_table_elt_t  **ph;

    headers = (ngx_array_t *) ((char *) &r->headers_in + offset);

    if (headers->elts == NULL) {
        if (FUNC0(headers, r->pool, 1, sizeof(ngx_table_elt_t *))
            != NGX_OK)
        {
            FUNC2(r, NGX_HTTP_INTERNAL_SERVER_ERROR);
            return NGX_ERROR;
        }
    }

    ph = FUNC1(headers);
    if (ph == NULL) {
        FUNC2(r, NGX_HTTP_INTERNAL_SERVER_ERROR);
        return NGX_ERROR;
    }

    *ph = h;
    return NGX_OK;
}