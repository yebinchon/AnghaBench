
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev {scalar_t__ chart_family; scalar_t__ chart_id_net_packets; scalar_t__ chart_id_net_fifo; scalar_t__ chart_id_net_events; scalar_t__ chart_id_net_errors; scalar_t__ chart_id_net_drops; scalar_t__ chart_id_net_compressed; scalar_t__ chart_id_net_bytes; scalar_t__ chart_type_net_packets; scalar_t__ chart_type_net_fifo; scalar_t__ chart_type_net_events; scalar_t__ chart_type_net_errors; scalar_t__ chart_type_net_drops; scalar_t__ chart_type_net_compressed; scalar_t__ chart_type_net_bytes; } ;


 int freez (void*) ;

__attribute__((used)) static void netdev_free_chart_strings(struct netdev *d) {
    freez((void *)d->chart_type_net_bytes);
    freez((void *)d->chart_type_net_compressed);
    freez((void *)d->chart_type_net_drops);
    freez((void *)d->chart_type_net_errors);
    freez((void *)d->chart_type_net_events);
    freez((void *)d->chart_type_net_fifo);
    freez((void *)d->chart_type_net_packets);

    freez((void *)d->chart_id_net_bytes);
    freez((void *)d->chart_id_net_compressed);
    freez((void *)d->chart_id_net_drops);
    freez((void *)d->chart_id_net_errors);
    freez((void *)d->chart_id_net_events);
    freez((void *)d->chart_id_net_fifo);
    freez((void *)d->chart_id_net_packets);

    freez((void *)d->chart_family);
}
