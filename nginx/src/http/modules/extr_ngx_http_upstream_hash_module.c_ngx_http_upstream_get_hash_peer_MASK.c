#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ time_t ;
typedef  int ngx_uint_t ;
struct TYPE_17__ {int /*<<< orphan*/ * name; int /*<<< orphan*/  socklen; int /*<<< orphan*/  sockaddr; int /*<<< orphan*/  log; int /*<<< orphan*/ * connection; scalar_t__ cached; int /*<<< orphan*/  tries; } ;
typedef  TYPE_2__ ngx_peer_connection_t ;
typedef  int ngx_int_t ;
struct TYPE_18__ {int weight; scalar_t__ max_fails; scalar_t__ fails; scalar_t__ checked; scalar_t__ fail_timeout; scalar_t__ max_conns; scalar_t__ conns; int /*<<< orphan*/  name; int /*<<< orphan*/  socklen; int /*<<< orphan*/  sockaddr; scalar_t__ down; struct TYPE_18__* next; } ;
typedef  TYPE_3__ ngx_http_upstream_rr_peer_t ;
struct TYPE_20__ {uintptr_t* tried; TYPE_9__* peers; TYPE_3__* current; } ;
struct TYPE_16__ {scalar_t__ len; int /*<<< orphan*/ * data; } ;
struct TYPE_19__ {int tries; int (* get_rr_peer ) (TYPE_2__*,TYPE_6__*) ;scalar_t__ rehash; int hash; TYPE_6__ rrp; TYPE_1__ key; } ;
typedef  TYPE_4__ ngx_http_upstream_hash_peer_data_t ;
struct TYPE_21__ {int total_weight; TYPE_3__* peer; scalar_t__ single; } ;

/* Variables and functions */
 int NGX_INT_T_LEN ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC10 () ; 
 int FUNC11 (TYPE_2__*,TYPE_6__*) ; 
 int FUNC12 (TYPE_2__*,TYPE_6__*) ; 

__attribute__((used)) static ngx_int_t
FUNC13(ngx_peer_connection_t *pc, void *data)
{
    ngx_http_upstream_hash_peer_data_t  *hp = data;

    time_t                        now;
    u_char                        buf[NGX_INT_T_LEN];
    size_t                        size;
    uint32_t                      hash;
    ngx_int_t                     w;
    uintptr_t                     m;
    ngx_uint_t                    n, p;
    ngx_http_upstream_rr_peer_t  *peer;

    FUNC7(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                   "get hash peer, try: %ui", pc->tries);

    FUNC5(hp->rrp.peers);

    if (hp->tries > 20 || hp->rrp.peers->single || hp->key.len == 0) {
        FUNC6(hp->rrp.peers);
        return hp->get_rr_peer(pc, &hp->rrp);
    }

    now = FUNC10();

    pc->cached = 0;
    pc->connection = NULL;

    for ( ;; ) {

        /*
         * Hash expression is compatible with Cache::Memcached:
         * ((crc32([REHASH] KEY) >> 16) & 0x7fff) + PREV_HASH
         * with REHASH omitted at the first iteration.
         */

        FUNC1(hash);

        if (hp->rehash > 0) {
            size = FUNC9(buf, "%ui", hp->rehash) - buf;
            FUNC2(&hash, buf, size);
        }

        FUNC2(&hash, hp->key.data, hp->key.len);
        FUNC0(hash);

        hash = (hash >> 16) & 0x7fff;

        hp->hash += hash;
        hp->rehash++;

        w = hp->hash % hp->rrp.peers->total_weight;
        peer = hp->rrp.peers->peer;
        p = 0;

        while (w >= peer->weight) {
            w -= peer->weight;
            peer = peer->next;
            p++;
        }

        n = p / (8 * sizeof(uintptr_t));
        m = (uintptr_t) 1 << p % (8 * sizeof(uintptr_t));

        if (hp->rrp.tried[n] & m) {
            goto next;
        }

        FUNC3(hp->rrp.peers, peer);

        FUNC8(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                       "get hash peer, value:%uD, peer:%ui", hp->hash, p);

        if (peer->down) {
            FUNC4(hp->rrp.peers, peer);
            goto next;
        }

        if (peer->max_fails
            && peer->fails >= peer->max_fails
            && now - peer->checked <= peer->fail_timeout)
        {
            FUNC4(hp->rrp.peers, peer);
            goto next;
        }

        if (peer->max_conns && peer->conns >= peer->max_conns) {
            FUNC4(hp->rrp.peers, peer);
            goto next;
        }

        break;

    next:

        if (++hp->tries > 20) {
            FUNC6(hp->rrp.peers);
            return hp->get_rr_peer(pc, &hp->rrp);
        }
    }

    hp->rrp.current = peer;

    pc->sockaddr = peer->sockaddr;
    pc->socklen = peer->socklen;
    pc->name = &peer->name;

    peer->conns++;

    if (now - peer->checked > peer->fail_timeout) {
        peer->checked = now;
    }

    FUNC4(hp->rrp.peers, peer);
    FUNC6(hp->rrp.peers);

    hp->rrp.tried[n] |= m;

    return NGX_OK;
}