#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ time_t ;
typedef  int ngx_uint_t ;
struct TYPE_15__ {int /*<<< orphan*/ * name; int /*<<< orphan*/  socklen; int /*<<< orphan*/  sockaddr; int /*<<< orphan*/  log; int /*<<< orphan*/ * connection; scalar_t__ cached; int /*<<< orphan*/  tries; } ;
typedef  TYPE_1__ ngx_peer_connection_t ;
typedef  int ngx_int_t ;
struct TYPE_16__ {int weight; scalar_t__ max_fails; scalar_t__ fails; scalar_t__ checked; scalar_t__ fail_timeout; scalar_t__ max_conns; scalar_t__ conns; int /*<<< orphan*/  name; int /*<<< orphan*/  socklen; int /*<<< orphan*/  sockaddr; scalar_t__ down; struct TYPE_16__* next; } ;
typedef  TYPE_2__ ngx_http_upstream_rr_peer_t ;
struct TYPE_18__ {uintptr_t* tried; TYPE_8__* peers; TYPE_2__* current; } ;
struct TYPE_17__ {int tries; int (* get_rr_peer ) (TYPE_1__*,TYPE_5__*) ;int hash; int* addr; TYPE_5__ rrp; scalar_t__ addrlen; } ;
typedef  TYPE_3__ ngx_http_upstream_ip_hash_peer_data_t ;
struct TYPE_19__ {int total_weight; TYPE_2__* peer; scalar_t__ single; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (TYPE_1__*,TYPE_5__*) ; 
 int FUNC8 (TYPE_1__*,TYPE_5__*) ; 

__attribute__((used)) static ngx_int_t
FUNC9(ngx_peer_connection_t *pc, void *data)
{
    ngx_http_upstream_ip_hash_peer_data_t  *iphp = data;

    time_t                        now;
    ngx_int_t                     w;
    uintptr_t                     m;
    ngx_uint_t                    i, n, p, hash;
    ngx_http_upstream_rr_peer_t  *peer;

    FUNC4(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                   "get ip hash peer, try: %ui", pc->tries);

    /* TODO: cached */

    FUNC2(iphp->rrp.peers);

    if (iphp->tries > 20 || iphp->rrp.peers->single) {
        FUNC3(iphp->rrp.peers);
        return iphp->get_rr_peer(pc, &iphp->rrp);
    }

    now = FUNC6();

    pc->cached = 0;
    pc->connection = NULL;

    hash = iphp->hash;

    for ( ;; ) {

        for (i = 0; i < (ngx_uint_t) iphp->addrlen; i++) {
            hash = (hash * 113 + iphp->addr[i]) % 6271;
        }

        w = hash % iphp->rrp.peers->total_weight;
        peer = iphp->rrp.peers->peer;
        p = 0;

        while (w >= peer->weight) {
            w -= peer->weight;
            peer = peer->next;
            p++;
        }

        n = p / (8 * sizeof(uintptr_t));
        m = (uintptr_t) 1 << p % (8 * sizeof(uintptr_t));

        if (iphp->rrp.tried[n] & m) {
            goto next;
        }

        FUNC5(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                       "get ip hash peer, hash: %ui %04XL", p, (uint64_t) m);

        FUNC0(iphp->rrp.peers, peer);

        if (peer->down) {
            FUNC1(iphp->rrp.peers, peer);
            goto next;
        }

        if (peer->max_fails
            && peer->fails >= peer->max_fails
            && now - peer->checked <= peer->fail_timeout)
        {
            FUNC1(iphp->rrp.peers, peer);
            goto next;
        }

        if (peer->max_conns && peer->conns >= peer->max_conns) {
            FUNC1(iphp->rrp.peers, peer);
            goto next;
        }

        break;

    next:

        if (++iphp->tries > 20) {
            FUNC3(iphp->rrp.peers);
            return iphp->get_rr_peer(pc, &iphp->rrp);
        }
    }

    iphp->rrp.current = peer;

    pc->sockaddr = peer->sockaddr;
    pc->socklen = peer->socklen;
    pc->name = &peer->name;

    peer->conns++;

    if (now - peer->checked > peer->fail_timeout) {
        peer->checked = now;
    }

    FUNC1(iphp->rrp.peers, peer);
    FUNC3(iphp->rrp.peers);

    iphp->rrp.tried[n] |= m;
    iphp->hash = hash;

    return NGX_OK;
}