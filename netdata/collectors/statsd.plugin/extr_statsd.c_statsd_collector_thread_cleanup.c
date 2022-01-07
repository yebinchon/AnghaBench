
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statsd_udp {size_t size; struct statsd_udp* msgs; struct statsd_udp* iovecs; struct statsd_udp* iov_base; scalar_t__* running; } ;


 int freez (struct statsd_udp*) ;
 int info (char*) ;

void statsd_collector_thread_cleanup(void *data) {
    struct statsd_udp *d = data;
    *d->running = 0;

    info("cleaning up...");
    freez(d);
}
