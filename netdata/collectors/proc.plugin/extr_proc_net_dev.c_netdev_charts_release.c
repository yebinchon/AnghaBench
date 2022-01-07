
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev {int * rd_tcompressed; int * rd_tcarrier; int * rd_tcollisions; int * rd_tfifo; int * rd_tdrops; int * rd_terrors; int * rd_tpackets; int * rd_tbytes; int * rd_rmulticast; int * rd_rcompressed; int * rd_rframe; int * rd_rfifo; int * rd_rdrops; int * rd_rerrors; int * rd_rpackets; int * rd_rbytes; int * st_packets; int * st_fifo; int * st_events; int * st_errors; int * st_drops; int * st_compressed; int * st_bandwidth; } ;


 int rrdset_is_obsolete (int *) ;

__attribute__((used)) static void netdev_charts_release(struct netdev *d) {
    if(d->st_bandwidth) rrdset_is_obsolete(d->st_bandwidth);
    if(d->st_packets) rrdset_is_obsolete(d->st_packets);
    if(d->st_errors) rrdset_is_obsolete(d->st_errors);
    if(d->st_drops) rrdset_is_obsolete(d->st_drops);
    if(d->st_fifo) rrdset_is_obsolete(d->st_fifo);
    if(d->st_compressed) rrdset_is_obsolete(d->st_compressed);
    if(d->st_events) rrdset_is_obsolete(d->st_events);

    d->st_bandwidth = ((void*)0);
    d->st_compressed = ((void*)0);
    d->st_drops = ((void*)0);
    d->st_errors = ((void*)0);
    d->st_events = ((void*)0);
    d->st_fifo = ((void*)0);
    d->st_packets = ((void*)0);

    d->rd_rbytes = ((void*)0);
    d->rd_rpackets = ((void*)0);
    d->rd_rerrors = ((void*)0);
    d->rd_rdrops = ((void*)0);
    d->rd_rfifo = ((void*)0);
    d->rd_rframe = ((void*)0);
    d->rd_rcompressed = ((void*)0);
    d->rd_rmulticast = ((void*)0);

    d->rd_tbytes = ((void*)0);
    d->rd_tpackets = ((void*)0);
    d->rd_terrors = ((void*)0);
    d->rd_tdrops = ((void*)0);
    d->rd_tfifo = ((void*)0);
    d->rd_tcollisions = ((void*)0);
    d->rd_tcarrier = ((void*)0);
    d->rd_tcompressed = ((void*)0);
}
