#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct netdev {scalar_t__ hash; char const* name; struct netdev* next; int /*<<< orphan*/  priority; void* chart_family; void* chart_id_net_packets; void* chart_id_net_fifo; void* chart_id_net_events; void* chart_id_net_errors; void* chart_id_net_drops; void* chart_id_net_compressed; void* chart_id_net_bytes; void* chart_type_net_packets; void* chart_type_net_fifo; void* chart_type_net_events; void* chart_type_net_errors; void* chart_type_net_drops; void* chart_type_net_compressed; void* chart_type_net_bytes; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDATA_CHART_PRIO_FIRST_NET_IFACE ; 
 struct netdev* FUNC0 (int,int) ; 
 int /*<<< orphan*/  netdev_added ; 
 struct netdev* netdev_last_used ; 
 int /*<<< orphan*/  FUNC1 (struct netdev*) ; 
 struct netdev* netdev_root ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 void* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static struct netdev *FUNC7(const char *name) {
    struct netdev *d;

    uint32_t hash = FUNC2(name);

    // search it, from the last position to the end
    for(d = netdev_last_used ; d ; d = d->next) {
        if(FUNC6(hash == d->hash && !FUNC3(name, d->name))) {
            netdev_last_used = d->next;
            return d;
        }
    }

    // search it from the beginning to the last position we used
    for(d = netdev_root ; d != netdev_last_used ; d = d->next) {
        if(FUNC6(hash == d->hash && !FUNC3(name, d->name))) {
            netdev_last_used = d->next;
            return d;
        }
    }

    // create a new one
    d = FUNC0(1, sizeof(struct netdev));
    d->name = FUNC4(name);
    d->hash = FUNC2(d->name);
    d->len = FUNC5(d->name);

    d->chart_type_net_bytes      = FUNC4("net");
    d->chart_type_net_compressed = FUNC4("net_compressed");
    d->chart_type_net_drops      = FUNC4("net_drops");
    d->chart_type_net_errors     = FUNC4("net_errors");
    d->chart_type_net_events     = FUNC4("net_events");
    d->chart_type_net_fifo       = FUNC4("net_fifo");
    d->chart_type_net_packets    = FUNC4("net_packets");

    d->chart_id_net_bytes      = FUNC4(d->name);
    d->chart_id_net_compressed = FUNC4(d->name);
    d->chart_id_net_drops      = FUNC4(d->name);
    d->chart_id_net_errors     = FUNC4(d->name);
    d->chart_id_net_events     = FUNC4(d->name);
    d->chart_id_net_fifo       = FUNC4(d->name);
    d->chart_id_net_packets    = FUNC4(d->name);

    d->chart_family = FUNC4(d->name);
    d->priority = NETDATA_CHART_PRIO_FIRST_NET_IFACE;

    FUNC1(d);

    netdev_added++;

    // link it to the end
    if(netdev_root) {
        struct netdev *e;
        for(e = netdev_root; e->next ; e = e->next) ;
        e->next = d;
    }
    else
        netdev_root = d;

    return d;
}