#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ data; } ;
struct TYPE_13__ {TYPE_1__ value; } ;
typedef  TYPE_3__ ngx_table_elt_t ;
struct TYPE_14__ {size_t len; int /*<<< orphan*/  data; } ;
typedef  TYPE_4__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_12__ {int /*<<< orphan*/  complex; } ;
struct TYPE_15__ {int /*<<< orphan*/  replacement; TYPE_2__ pattern; } ;
typedef  TYPE_5__ ngx_http_proxy_rewrite_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_DECLINED ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,size_t,size_t,TYPE_4__*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static ngx_int_t
FUNC3(ngx_http_request_t *r,
    ngx_table_elt_t *h, size_t prefix, size_t len, ngx_http_proxy_rewrite_t *pr)
{
    ngx_str_t  pattern, replacement;

    if (FUNC0(r, &pr->pattern.complex, &pattern) != NGX_OK) {
        return NGX_ERROR;
    }

    if (pattern.len > len
        || FUNC2(h->value.data + prefix, pattern.data,
                        pattern.len) != 0)
    {
        return NGX_DECLINED;
    }

    if (FUNC0(r, &pr->replacement, &replacement) != NGX_OK) {
        return NGX_ERROR;
    }

    return FUNC1(r, h, prefix, pattern.len, &replacement);
}