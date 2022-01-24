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
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_3__ {int /*<<< orphan*/  perl; } ;
typedef  TYPE_1__ ngx_http_perl_main_conf_t ;
typedef  int /*<<< orphan*/  ngx_cycle_t ;
typedef  int /*<<< orphan*/  I32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVt_PV ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_perl_module ; 
 scalar_t__ ngx_pid ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_cycle_t *cycle)
{
    ngx_http_perl_main_conf_t  *pmcf;

    pmcf = FUNC5(cycle, ngx_http_perl_module);

    if (pmcf) {
        FUNC3(pmcf->perl);
        FUNC1(pmcf->perl);
        FUNC2(pmcf->perl);

        /* set worker's $$ */

        FUNC6(FUNC0(FUNC4("$", TRUE, SVt_PV)), (I32) ngx_pid);
    }

    return NGX_OK;
}