#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
typedef  size_t ngx_uint_t ;
struct TYPE_17__ {int /*<<< orphan*/ * name; int /*<<< orphan*/  socklen; int /*<<< orphan*/  sockaddr; int /*<<< orphan*/ * connection; scalar_t__ cached; int /*<<< orphan*/  tries; int /*<<< orphan*/  log; } ;
typedef  TYPE_3__ ngx_peer_connection_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_18__ {scalar_t__ single; } ;
typedef  TYPE_4__ ngx_http_upstream_rr_peers_t ;
struct TYPE_19__ {scalar_t__ max_fails; scalar_t__ fails; scalar_t__ checked; scalar_t__ fail_timeout; int max_conns; int conns; int weight; int /*<<< orphan*/  name; int /*<<< orphan*/  socklen; int /*<<< orphan*/  sockaddr; scalar_t__ down; } ;
typedef  TYPE_5__ ngx_http_upstream_rr_peer_t ;
struct TYPE_20__ {uintptr_t* tried; TYPE_5__* current; TYPE_4__* peers; } ;
typedef  TYPE_6__ ngx_http_upstream_rr_peer_data_t ;
struct TYPE_21__ {int tries; TYPE_2__* conf; TYPE_6__ rrp; } ;
typedef  TYPE_7__ ngx_http_upstream_random_peer_data_t ;
struct TYPE_16__ {TYPE_1__* ranges; } ;
struct TYPE_15__ {TYPE_5__* peer; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_6__*) ; 
 size_t FUNC1 (TYPE_4__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_peer_connection_t *pc, void *data)
{
    ngx_http_upstream_random_peer_data_t  *rp = data;

    time_t                             now;
    uintptr_t                          m;
    ngx_uint_t                         i, n, p;
    ngx_http_upstream_rr_peer_t       *peer, *prev;
    ngx_http_upstream_rr_peers_t      *peers;
    ngx_http_upstream_rr_peer_data_t  *rrp;

    FUNC4(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                   "get random2 peer, try: %ui", pc->tries);

    rrp = &rp->rrp;
    peers = rrp->peers;

    FUNC3(peers);

    if (rp->tries > 20 || peers->single) {
        FUNC2(peers);
        return FUNC0(pc, rrp);
    }

    pc->cached = 0;
    pc->connection = NULL;

    now = FUNC5();

    prev = NULL;

#if (NGX_SUPPRESS_WARN)
    p = 0;
#endif

    for ( ;; ) {

        i = FUNC1(peers, rp);

        peer = rp->conf->ranges[i].peer;

        if (peer == prev) {
            goto next;
        }

        n = i / (8 * sizeof(uintptr_t));
        m = (uintptr_t) 1 << i % (8 * sizeof(uintptr_t));

        if (rrp->tried[n] & m) {
            goto next;
        }

        if (peer->down) {
            goto next;
        }

        if (peer->max_fails
            && peer->fails >= peer->max_fails
            && now - peer->checked <= peer->fail_timeout)
        {
            goto next;
        }

        if (peer->max_conns && peer->conns >= peer->max_conns) {
            goto next;
        }

        if (prev) {
            if (peer->conns * prev->weight > prev->conns * peer->weight) {
                peer = prev;
                n = p / (8 * sizeof(uintptr_t));
                m = (uintptr_t) 1 << p % (8 * sizeof(uintptr_t));
            }

            break;
        }

        prev = peer;
        p = i;

    next:

        if (++rp->tries > 20) {
            FUNC2(peers);
            return FUNC0(pc, rrp);
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

    FUNC2(peers);

    rrp->tried[n] |= m;

    return NGX_OK;
}