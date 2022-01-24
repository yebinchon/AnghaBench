#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_14__ {TYPE_3__* data; } ;
struct TYPE_15__ {TYPE_1__ peer; } ;
typedef  TYPE_2__ ngx_stream_upstream_srv_conf_t ;
struct TYPE_16__ {int number; TYPE_4__* peer; } ;
typedef  TYPE_3__ ngx_stream_upstream_rr_peers_t ;
struct TYPE_17__ {size_t weight; struct TYPE_17__* next; } ;
typedef  TYPE_4__ ngx_stream_upstream_rr_peer_t ;
struct TYPE_18__ {TYPE_6__* ranges; } ;
typedef  TYPE_5__ ngx_stream_upstream_random_srv_conf_t ;
struct TYPE_19__ {size_t range; TYPE_4__* peer; } ;
typedef  TYPE_6__ ngx_stream_upstream_random_range_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_13__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 TYPE_6__* FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 TYPE_11__* ngx_cycle ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 TYPE_5__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_stream_upstream_random_module ; 

__attribute__((used)) static ngx_int_t
FUNC3(ngx_pool_t *pool,
    ngx_stream_upstream_srv_conf_t *us)
{
    size_t                                  size;
    ngx_uint_t                              i, total_weight;
    ngx_stream_upstream_rr_peer_t          *peer;
    ngx_stream_upstream_rr_peers_t         *peers;
    ngx_stream_upstream_random_range_t     *ranges;
    ngx_stream_upstream_random_srv_conf_t  *rcf;

    rcf = FUNC2(us,
                                            ngx_stream_upstream_random_module);
    peers = us->peer.data;

    size = peers->number * sizeof(ngx_stream_upstream_random_range_t);

    ranges = pool ? FUNC1(pool, size) : FUNC0(size, ngx_cycle->log);
    if (ranges == NULL) {
        return NGX_ERROR;
    }

    total_weight = 0;

    for (peer = peers->peer, i = 0; peer; peer = peer->next, i++) {
        ranges[i].peer = peer;
        ranges[i].range = total_weight;
        total_weight += peer->weight;
    }

    rcf->ranges = ranges;

    return NGX_OK;
}