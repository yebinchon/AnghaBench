
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ev_flags; scalar_t__ io_wraplist; int event; int state; TYPE_1__* thread; int sfd; } ;
typedef TYPE_2__ conn ;
struct TYPE_6__ {int base; } ;


 int EV_PERSIST ;
 int EV_READ ;
 int conn_mwrite ;
 int conn_new_cmd ;
 int conn_set_state (TYPE_2__*,int ) ;
 int drive_machine (TYPE_2__*) ;
 int event_add (int *,int ) ;
 int event_base_set (int ,int *) ;
 int event_handler ;
 int event_set (int *,int ,int,int ,void*) ;
 int perror (char*) ;

void conn_worker_readd(conn *c) {
    c->ev_flags = EV_READ | EV_PERSIST;
    event_set(&c->event, c->sfd, c->ev_flags, event_handler, (void *)c);
    event_base_set(c->thread->base, &c->event);
    c->state = conn_new_cmd;


    if (event_add(&c->event, 0) == -1) {
        perror("event_add");
    }
}
