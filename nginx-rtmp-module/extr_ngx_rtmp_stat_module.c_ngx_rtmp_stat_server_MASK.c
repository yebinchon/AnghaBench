#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t nelts; int /*<<< orphan*/ ** elts; } ;
struct TYPE_5__ {TYPE_1__ applications; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ngx_rtmp_core_srv_conf_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_core_app_conf_t ;
typedef  int /*<<< orphan*/  ngx_http_request_t ;
typedef  int /*<<< orphan*/  ngx_chain_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(ngx_http_request_t *r, ngx_chain_t ***lll,
        ngx_rtmp_core_srv_conf_t *cscf)
{
    ngx_rtmp_core_app_conf_t      **cacf;
    size_t                          n;

    FUNC0("<server>\r\n");

#ifdef NGX_RTMP_POOL_DEBUG
    ngx_rtmp_stat_dump_pool(r, lll, cscf->pool);
#endif

    cacf = cscf->applications.elts;
    for (n = 0; n < cscf->applications.nelts; ++n, ++cacf) {
        FUNC1(r, lll, *cacf);
    }

    FUNC0("</server>\r\n");
}