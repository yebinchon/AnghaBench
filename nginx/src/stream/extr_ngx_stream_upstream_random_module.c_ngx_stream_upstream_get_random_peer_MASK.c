#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
typedef  size_t ngx_uint_t ;
struct TYPE_21__ {scalar_t__ single; } ;
typedef  TYPE_3__ ngx_stream_upstream_rr_peers_t ;
struct TYPE_22__ {scalar_t__ max_fails; scalar_t__ fails; scalar_t__ checked; scalar_t__ fail_timeout; scalar_t__ max_conns; scalar_t__ conns; int /*<<< orphan*/  name; int /*<<< orphan*/  socklen; int /*<<< orphan*/  sockaddr; scalar_t__ down; } ;
typedef  TYPE_4__ ngx_stream_upstream_rr_peer_t ;
struct TYPE_23__ {uintptr_t* tried; TYPE_4__* current; TYPE_3__* peers; } ;
typedef  TYPE_5__ ngx_stream_upstream_rr_peer_data_t ;
struct TYPE_24__ {int tries; TYPE_2__* conf; TYPE_5__ rrp; } ;
typedef  TYPE_6__ ngx_stream_upstream_random_peer_data_t ;
struct TYPE_25__ {int /*<<< orphan*/ * name; int /*<<< orphan*/  socklen; int /*<<< orphan*/  sockaddr; int /*<<< orphan*/ * connection; scalar_t__ cached; int /*<<< orphan*/  tries; int /*<<< orphan*/  log; } ;
typedef  TYPE_7__ ngx_peer_connection_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_20__ {TYPE_1__* ranges; } ;
struct TYPE_19__ {TYPE_4__* peer; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_STREAM ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,TYPE_5__*) ; 
 size_t FUNC2 (TYPE_3__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static ngx_int_t
FUNC8(ngx_peer_connection_t *pc, void *data)
{
    ngx_stream_upstream_random_peer_data_t  *rp = data;

    time_t                               now;
    uintptr_t                            m;
    ngx_uint_t                           i, n;
    ngx_stream_upstream_rr_peer_t       *peer;
    ngx_stream_upstream_rr_peers_t      *peers;
    ngx_stream_upstream_rr_peer_data_t  *rrp;

    FUNC0(NGX_LOG_DEBUG_STREAM, pc->log, 0,
                   "get random peer, try: %ui", pc->tries);

    rrp = &rp->rrp;
    peers = rrp->peers;

    FUNC5(peers);

    if (rp->tries > 20 || peers->single) {
        FUNC6(peers);
        return FUNC1(pc, rrp);
    }

    pc->cached = 0;
    pc->connection = NULL;

    now = FUNC7();

    for ( ;; ) {

        i = FUNC2(peers, rp);

        peer = rp->conf->ranges[i].peer;

        n = i / (8 * sizeof(uintptr_t));
        m = (uintptr_t) 1 << i % (8 * sizeof(uintptr_t));

        if (rrp->tried[n] & m) {
            goto next;
        }

        FUNC3(peers, peer);

        if (peer->down) {
            FUNC4(peers, peer);
            goto next;
        }

        if (peer->max_fails
            && peer->fails >= peer->max_fails
            && now - peer->checked <= peer->fail_timeout)
        {
            FUNC4(peers, peer);
            goto next;
        }

        if (peer->max_conns && peer->conns >= peer->max_conns) {
            FUNC4(peers, peer);
            goto next;
        }

        break;

    next:

        if (++rp->tries > 20) {
            FUNC6(peers);
            return FUNC1(pc, rrp);
        }
    }

    rrp->current = peer;

    if (now - peer->checked > peer->fail_timeout) {
        peer->checked = now;
    }

    pc->sockaddr = peer->sockaddr;
    pc->socklen = peer->socklen;
    pc->name = &peer->name;

    peer->conns++;

    FUNC4(peers, peer);
    FUNC6(peers);

    rrp->tried[n] |= m;

    return NGX_OK;
}