
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int ngx_uint_t ;
struct TYPE_7__ {scalar_t__ max_fails; scalar_t__ fails; scalar_t__ checked; scalar_t__ fail_timeout; scalar_t__ max_conns; scalar_t__ conns; scalar_t__ current_weight; scalar_t__ effective_weight; scalar_t__ weight; scalar_t__ down; struct TYPE_7__* next; } ;
typedef TYPE_2__ ngx_stream_upstream_rr_peer_t ;
struct TYPE_8__ {uintptr_t* tried; TYPE_2__* current; TYPE_1__* peers; } ;
typedef TYPE_3__ ngx_stream_upstream_rr_peer_data_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_6__ {TYPE_2__* peer; } ;


 scalar_t__ ngx_time () ;

__attribute__((used)) static ngx_stream_upstream_rr_peer_t *
ngx_stream_upstream_get_peer(ngx_stream_upstream_rr_peer_data_t *rrp)
{
    time_t now;
    uintptr_t m;
    ngx_int_t total;
    ngx_uint_t i, n, p;
    ngx_stream_upstream_rr_peer_t *peer, *best;

    now = ngx_time();

    best = ((void*)0);
    total = 0;





    for (peer = rrp->peers->peer, i = 0;
         peer;
         peer = peer->next, i++)
    {
        n = i / (8 * sizeof(uintptr_t));
        m = (uintptr_t) 1 << i % (8 * sizeof(uintptr_t));

        if (rrp->tried[n] & m) {
            continue;
        }

        if (peer->down) {
            continue;
        }

        if (peer->max_fails
            && peer->fails >= peer->max_fails
            && now - peer->checked <= peer->fail_timeout)
        {
            continue;
        }

        if (peer->max_conns && peer->conns >= peer->max_conns) {
            continue;
        }

        peer->current_weight += peer->effective_weight;
        total += peer->effective_weight;

        if (peer->effective_weight < peer->weight) {
            peer->effective_weight++;
        }

        if (best == ((void*)0) || peer->current_weight > best->current_weight) {
            best = peer;
            p = i;
        }
    }

    if (best == ((void*)0)) {
        return ((void*)0);
    }

    rrp->current = best;

    n = p / (8 * sizeof(uintptr_t));
    m = (uintptr_t) 1 << p % (8 * sizeof(uintptr_t));

    rrp->tried[n] |= m;

    best->current_weight -= total;

    if (now - best->checked > best->fail_timeout) {
        best->checked = now;
    }

    return best;
}
