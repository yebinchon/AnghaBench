
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sfd; TYPE_2__* thread; int state; } ;
typedef TYPE_1__ conn ;
struct TYPE_9__ {int mode; TYPE_1__* c; int init_state; int sfd; } ;
struct TYPE_8__ {int notify_send_fd; int new_conn_queue; } ;
typedef TYPE_2__ LIBEVENT_THREAD ;
typedef TYPE_3__ CQ_ITEM ;


 int close (int ) ;
 int conn_closed ;
 int conn_new_cmd ;
 int cq_push (int ,TYPE_3__*) ;
 TYPE_3__* cqi_new () ;
 int perror (char*) ;
 int queue_redispatch ;
 int write (int ,char*,int) ;

void redispatch_conn(conn *c) {
    CQ_ITEM *item = cqi_new();
    char buf[1];
    if (item == ((void*)0)) {

        c->state = conn_closed;
        close(c->sfd);
        return;
    }
    LIBEVENT_THREAD *thread = c->thread;
    item->sfd = c->sfd;
    item->init_state = conn_new_cmd;
    item->c = c;
    item->mode = queue_redispatch;

    cq_push(thread->new_conn_queue, item);

    buf[0] = 'c';
    if (write(thread->notify_send_fd, buf, 1) != 1) {
        perror("Writing to thread notify pipe");
    }
}
