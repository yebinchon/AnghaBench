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
typedef  int /*<<< orphan*/  ngx_rtmp_session_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_core_srv_conf_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_chain_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  ngx_rtmp_core_module ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC3(ngx_rtmp_session_t *s, ngx_chain_t *cl)
{
    ngx_rtmp_core_srv_conf_t       *cscf;
    ngx_int_t                       rc;

    if (cl == NULL) {
        return NGX_ERROR;
    }

    cscf = FUNC1(s, ngx_rtmp_core_module);

    rc = FUNC2(s, cl, 0);

    FUNC0(cscf, cl);

    return rc;
}