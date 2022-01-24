#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_3__ {scalar_t__ degrade; } ;
typedef  TYPE_1__ ngx_http_degradation_loc_conf_t ;

/* Variables and functions */
 scalar_t__ NGX_DECLINED ; 
 int /*<<< orphan*/  ngx_http_degradation_module ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC2(ngx_http_request_t *r)
{
    ngx_http_degradation_loc_conf_t  *dlcf;

    dlcf = FUNC1(r, ngx_http_degradation_module);

    if (dlcf->degrade && FUNC0(r)) {
        return dlcf->degrade;
    }

    return NGX_DECLINED;
}