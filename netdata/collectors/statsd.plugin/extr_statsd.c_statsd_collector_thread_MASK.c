#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct statsd_udp {int* running; int size; TYPE_3__* msgs; TYPE_1__* iovecs; int /*<<< orphan*/  type; } ;
struct mmsghdr {int dummy; } ;
struct iovec {int dummy; } ;
struct collection_thread_status {int status; int /*<<< orphan*/  max_sockets; } ;
struct TYPE_8__ {int recvmmsg_size; int update_every; int /*<<< orphan*/  tcp_idle_timeout; int /*<<< orphan*/  sockets; } ;
struct TYPE_6__ {int msg_iovlen; TYPE_1__* msg_iov; } ;
struct TYPE_7__ {TYPE_2__ msg_hdr; } ;
struct TYPE_5__ {scalar_t__ iov_len; int /*<<< orphan*/  iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATSD_SOCKET_DATA_TYPE_UDP ; 
 scalar_t__ STATSD_UDP_BUFFER_SIZE ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct statsd_udp*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ ) ; 
 TYPE_4__ statsd ; 
 int /*<<< orphan*/  statsd_add_callback ; 
 int /*<<< orphan*/  statsd_collector_thread_cleanup ; 
 int /*<<< orphan*/  statsd_del_callback ; 
 int /*<<< orphan*/  statsd_rcv_callback ; 
 int /*<<< orphan*/  statsd_snd_callback ; 
 int /*<<< orphan*/  statsd_timer_callback ; 

void *FUNC7(void *ptr) {
    struct collection_thread_status *status = ptr;
    status->status = 1;

    FUNC2("STATSD collector thread started with taskid %d", FUNC1());

    struct statsd_udp *d = FUNC0(sizeof(struct statsd_udp), 1);
    d->running = &status->status;

    FUNC5(statsd_collector_thread_cleanup, d);

#ifdef HAVE_RECVMMSG
    d->type = STATSD_SOCKET_DATA_TYPE_UDP;
    d->size = statsd.recvmmsg_size;
    d->iovecs = callocz(sizeof(struct iovec), d->size);
    d->msgs = callocz(sizeof(struct mmsghdr), d->size);

    size_t i;
    for (i = 0; i < d->size; i++) {
        d->iovecs[i].iov_base = mallocz(STATSD_UDP_BUFFER_SIZE);
        d->iovecs[i].iov_len = STATSD_UDP_BUFFER_SIZE - 1;
        d->msgs[i].msg_hdr.msg_iov = &d->iovecs[i];
        d->msgs[i].msg_hdr.msg_iovlen = 1;
    }
#endif

    FUNC6(&statsd.sockets
            , statsd_add_callback
            , statsd_del_callback
            , statsd_rcv_callback
            , statsd_snd_callback
            , statsd_timer_callback
            , NULL                     // No access control pattern
            , 0                        // No dns lookups for access control pattern
            , (void *)d
            , 0                        // tcp request timeout, 0 = disabled
            , statsd.tcp_idle_timeout  // tcp idle timeout, 0 = disabled
            , statsd.update_every * 1000
            , ptr // timer_data
            , status->max_sockets
    );

    FUNC4(1);
    return NULL;
}