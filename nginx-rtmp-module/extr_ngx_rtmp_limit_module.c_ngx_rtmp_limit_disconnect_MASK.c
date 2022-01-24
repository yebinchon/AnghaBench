#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_3__ ngx_slab_pool_t ;
struct TYPE_10__ {scalar_t__ addr; } ;
struct TYPE_13__ {scalar_t__* data; TYPE_1__ shm; } ;
typedef  TYPE_4__ ngx_shm_zone_t ;
struct TYPE_14__ {TYPE_2__* connection; } ;
typedef  TYPE_5__ ngx_rtmp_session_t ;
struct TYPE_15__ {scalar_t__ max_conn; TYPE_4__* shm_zone; } ;
typedef  TYPE_6__ ngx_rtmp_limit_main_conf_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_header_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_chain_t ;
struct TYPE_11__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_CONF_UNSET ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 TYPE_6__* FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_limit_module ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_rtmp_session_t *s, ngx_rtmp_header_t *h,
    ngx_chain_t *in)
{
    ngx_rtmp_limit_main_conf_t *lmcf;
    ngx_slab_pool_t            *shpool;
    ngx_shm_zone_t             *shm_zone;
    uint32_t                   *nconn, n;

    lmcf = FUNC1(s, ngx_rtmp_limit_module);
    if (lmcf->max_conn == NGX_CONF_UNSET) {
        return NGX_OK;
    }

    shm_zone = lmcf->shm_zone;
    shpool = (ngx_slab_pool_t *) shm_zone->shm.addr;
    nconn = shm_zone->data;

    FUNC2(&shpool->mutex);
    n = --*nconn;
    FUNC3(&shpool->mutex);

    (void) n;
    FUNC0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "limit: dec conection counter: %uD", n);

    return NGX_OK;
}