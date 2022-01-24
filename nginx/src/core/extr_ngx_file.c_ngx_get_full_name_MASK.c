#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {size_t len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  int ngx_int_t ;

/* Variables and functions */
 int NGX_ERROR ; 
 int NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC3 (TYPE_1__*) ; 

ngx_int_t
FUNC4(ngx_pool_t *pool, ngx_str_t *prefix, ngx_str_t *name)
{
    size_t      len;
    u_char     *p, *n;
    ngx_int_t   rc;

    rc = FUNC3(name);

    if (rc == NGX_OK) {
        return rc;
    }

    len = prefix->len;

#if (NGX_WIN32)

    if (rc == 2) {
        len = rc;
    }

#endif

    n = FUNC2(pool, len + name->len + 1);
    if (n == NULL) {
        return NGX_ERROR;
    }

    p = FUNC0(n, prefix->data, len);
    FUNC1(p, name->data, name->len + 1);

    name->len += len;
    name->data = n;

    return NGX_OK;
}