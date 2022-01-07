
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct statsd_udp {int* running; int size; TYPE_3__* msgs; TYPE_1__* iovecs; int type; } ;
struct mmsghdr {int dummy; } ;
struct iovec {int dummy; } ;
struct collection_thread_status {int status; int max_sockets; } ;
struct TYPE_8__ {int recvmmsg_size; int update_every; int tcp_idle_timeout; int sockets; } ;
struct TYPE_6__ {int msg_iovlen; TYPE_1__* msg_iov; } ;
struct TYPE_7__ {TYPE_2__ msg_hdr; } ;
struct TYPE_5__ {scalar_t__ iov_len; int iov_base; } ;


 int STATSD_SOCKET_DATA_TYPE_UDP ;
 scalar_t__ STATSD_UDP_BUFFER_SIZE ;
 void* callocz (int,int) ;
 int gettid () ;
 int info (char*,int ) ;
 int mallocz (scalar_t__) ;
 int netdata_thread_cleanup_pop (int) ;
 int netdata_thread_cleanup_push (int ,struct statsd_udp*) ;
 int poll_events (int *,int ,int ,int ,int ,int ,int *,int ,void*,int ,int ,int,void*,int ) ;
 TYPE_4__ statsd ;
 int statsd_add_callback ;
 int statsd_collector_thread_cleanup ;
 int statsd_del_callback ;
 int statsd_rcv_callback ;
 int statsd_snd_callback ;
 int statsd_timer_callback ;

void *statsd_collector_thread(void *ptr) {
    struct collection_thread_status *status = ptr;
    status->status = 1;

    info("STATSD collector thread started with taskid %d", gettid());

    struct statsd_udp *d = callocz(sizeof(struct statsd_udp), 1);
    d->running = &status->status;

    netdata_thread_cleanup_push(statsd_collector_thread_cleanup, d);
    poll_events(&statsd.sockets
            , statsd_add_callback
            , statsd_del_callback
            , statsd_rcv_callback
            , statsd_snd_callback
            , statsd_timer_callback
            , ((void*)0)
            , 0
            , (void *)d
            , 0
            , statsd.tcp_idle_timeout
            , statsd.update_every * 1000
            , ptr
            , status->max_sockets
    );

    netdata_thread_cleanup_pop(1);
    return ((void*)0);
}
