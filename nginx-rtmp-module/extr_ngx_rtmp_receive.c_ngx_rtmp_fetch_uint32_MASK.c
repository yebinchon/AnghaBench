#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_chain_t ;

/* Variables and functions */
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC1(ngx_chain_t **in, uint32_t *ret, ngx_int_t n)
{
    u_char     *r = (u_char *) ret;
    ngx_int_t   rc;

    *ret = 0;

    while (--n >= 0) {
        rc = FUNC0(in, &r[n]);
        if (rc != NGX_OK) {
            return rc;
        }
    }

    return NGX_OK;
}