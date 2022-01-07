
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_rename {int container_device; int container_name; int host_device; } ;
struct netdev {int flipped; int priority; void* chart_family; void* chart_id_net_packets; void* chart_id_net_fifo; void* chart_id_net_events; void* chart_id_net_errors; void* chart_id_net_drops; void* chart_id_net_compressed; void* chart_id_net_bytes; void* chart_type_net_packets; void* chart_type_net_fifo; void* chart_type_net_events; void* chart_type_net_errors; void* chart_type_net_drops; void* chart_type_net_compressed; void* chart_type_net_bytes; } ;


 int NETDATA_CHART_PRIO_CGROUP_NET_IFACE ;
 int RRD_ID_LENGTH_MAX ;
 int info (char*,int ,int ,int ) ;
 int netdev_charts_release (struct netdev*) ;
 int netdev_free_chart_strings (struct netdev*) ;
 int snprintfz (char*,int ,char*,int ) ;
 void* strdupz (char*) ;

__attribute__((used)) static inline void netdev_rename_cgroup(struct netdev *d, struct netdev_rename *r) {
    info("CGROUP: renaming network interface '%s' as '%s' under '%s'", r->host_device, r->container_device, r->container_name);

    netdev_charts_release(d);
    netdev_free_chart_strings(d);

    char buffer[RRD_ID_LENGTH_MAX + 1];

    snprintfz(buffer, RRD_ID_LENGTH_MAX, "cgroup_%s", r->container_name);
    d->chart_type_net_bytes = strdupz(buffer);
    d->chart_type_net_compressed = strdupz(buffer);
    d->chart_type_net_drops = strdupz(buffer);
    d->chart_type_net_errors = strdupz(buffer);
    d->chart_type_net_events = strdupz(buffer);
    d->chart_type_net_fifo = strdupz(buffer);
    d->chart_type_net_packets = strdupz(buffer);

    snprintfz(buffer, RRD_ID_LENGTH_MAX, "net_%s", r->container_device);
    d->chart_id_net_bytes = strdupz(buffer);

    snprintfz(buffer, RRD_ID_LENGTH_MAX, "net_compressed_%s", r->container_device);
    d->chart_id_net_compressed = strdupz(buffer);

    snprintfz(buffer, RRD_ID_LENGTH_MAX, "net_drops_%s", r->container_device);
    d->chart_id_net_drops = strdupz(buffer);

    snprintfz(buffer, RRD_ID_LENGTH_MAX, "net_errors_%s", r->container_device);
    d->chart_id_net_errors = strdupz(buffer);

    snprintfz(buffer, RRD_ID_LENGTH_MAX, "net_events_%s", r->container_device);
    d->chart_id_net_events = strdupz(buffer);

    snprintfz(buffer, RRD_ID_LENGTH_MAX, "net_fifo_%s", r->container_device);
    d->chart_id_net_fifo = strdupz(buffer);

    snprintfz(buffer, RRD_ID_LENGTH_MAX, "net_packets_%s", r->container_device);
    d->chart_id_net_packets = strdupz(buffer);

    snprintfz(buffer, RRD_ID_LENGTH_MAX, "net %s", r->container_device);
    d->chart_family = strdupz(buffer);

    d->priority = NETDATA_CHART_PRIO_CGROUP_NET_IFACE;
    d->flipped = 1;
}
