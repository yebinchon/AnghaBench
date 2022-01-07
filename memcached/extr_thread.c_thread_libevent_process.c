
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int timeout_fd ;
struct TYPE_8__ {TYPE_2__* thread; int ssl_wbuf; int * ssl; } ;
typedef TYPE_1__ conn ;
struct TYPE_11__ {scalar_t__ verbose; int ssl_enabled; } ;
struct TYPE_10__ {int sfd; int c; int ssl; int transport; int read_buffer_size; int event_flags; int init_state; int mode; } ;
struct TYPE_9__ {int base; int ssl_wbuf; int new_conn_queue; } ;
typedef TYPE_2__ LIBEVENT_THREAD ;
typedef TYPE_3__ CQ_ITEM ;


 int IS_UDP (int ) ;
 int SSL_free (int ) ;
 int SSL_shutdown (int ) ;
 int assert (int) ;
 int close (int) ;
 int conn_close_idle (int ) ;
 TYPE_1__* conn_new (int,int ,int ,int ,int ,int ,int ) ;
 int conn_worker_readd (int ) ;
 int * conns ;
 TYPE_3__* cq_pop (int ) ;
 int cqi_free (TYPE_3__*) ;
 int event_base_loopexit (int ,int *) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;


 int read (int,...) ;
 int register_thread_initialized () ;
 TYPE_4__ settings ;
 int stderr ;

__attribute__((used)) static void thread_libevent_process(int fd, short which, void *arg) {
    LIBEVENT_THREAD *me = arg;
    CQ_ITEM *item;
    char buf[1];
    conn *c;
    unsigned int timeout_fd;

    if (read(fd, buf, 1) != 1) {
        if (settings.verbose > 0)
            fprintf(stderr, "Can't read from libevent pipe\n");
        return;
    }

    switch (buf[0]) {
    case 'c':
        item = cq_pop(me->new_conn_queue);

        if (((void*)0) == item) {
            break;
        }
        switch (item->mode) {
            case 129:
                c = conn_new(item->sfd, item->init_state, item->event_flags,
                                   item->read_buffer_size, item->transport,
                                   me->base, item->ssl);
                if (c == ((void*)0)) {
                    if (IS_UDP(item->transport)) {
                        fprintf(stderr, "Can't listen for events on UDP socket\n");
                        exit(1);
                    } else {
                        if (settings.verbose > 0) {
                            fprintf(stderr, "Can't listen for events on fd %d\n",
                                item->sfd);
                        }






                        close(item->sfd);
                    }
                } else {
                    c->thread = me;






                }
                break;

            case 128:
                conn_worker_readd(item->c);
                break;
        }
        cqi_free(item);
        break;

    case 'p':
        register_thread_initialized();
        break;

    case 't':
        if (read(fd, &timeout_fd, sizeof(timeout_fd)) != sizeof(timeout_fd)) {
            if (settings.verbose > 0)
                fprintf(stderr, "Can't read timeout fd from libevent pipe\n");
            return;
        }
        conn_close_idle(conns[timeout_fd]);
        break;

    case 's':
        event_base_loopexit(me->base, ((void*)0));
        break;
    }
}
