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
typedef  int /*<<< orphan*/  ngx_queue_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_4__ {TYPE_2__* inclusive; TYPE_2__* exact; } ;
typedef  TYPE_1__ ngx_http_location_queue_t ;
struct TYPE_5__ {int /*<<< orphan*/ * static_locations; int /*<<< orphan*/ * locations; } ;
typedef  TYPE_2__ ngx_http_core_loc_conf_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_conf_t *cf,
    ngx_http_core_loc_conf_t *pclcf)
{
    ngx_queue_t                *q, *locations;
    ngx_http_core_loc_conf_t   *clcf;
    ngx_http_location_queue_t  *lq;

    locations = pclcf->locations;

    if (locations == NULL) {
        return NGX_OK;
    }

    if (FUNC3(locations)) {
        return NGX_OK;
    }

    for (q = FUNC4(locations);
         q != FUNC6(locations);
         q = FUNC5(q))
    {
        lq = (ngx_http_location_queue_t *) q;

        clcf = lq->exact ? lq->exact : lq->inclusive;

        if (FUNC7(cf, clcf) != NGX_OK) {
            return NGX_ERROR;
        }
    }

    if (FUNC2(cf, locations) != NGX_OK) {
        return NGX_ERROR;
    }

    FUNC0(locations, FUNC4(locations));

    pclcf->static_locations = FUNC1(cf, locations, 0);
    if (pclcf->static_locations == NULL) {
        return NGX_ERROR;
    }

    return NGX_OK;
}