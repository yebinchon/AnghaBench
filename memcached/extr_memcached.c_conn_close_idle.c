
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ last_cmd_time; scalar_t__ state; int sfd; TYPE_2__* thread; } ;
typedef TYPE_3__ conn ;
struct TYPE_11__ {scalar_t__ idle_timeout; int verbose; } ;
struct TYPE_8__ {int idle_kicks; } ;
struct TYPE_9__ {TYPE_1__ stats; } ;


 int conn_closing ;
 scalar_t__ conn_new_cmd ;
 scalar_t__ conn_read ;
 int conn_set_state (TYPE_3__*,int ) ;
 scalar_t__ current_time ;
 int drive_machine (TYPE_3__*) ;
 int fprintf (int ,char*,int) ;
 TYPE_4__ settings ;
 int stderr ;

void conn_close_idle(conn *c) {
    if (settings.idle_timeout > 0 &&
        (current_time - c->last_cmd_time) > settings.idle_timeout) {
        if (c->state != conn_new_cmd && c->state != conn_read) {
            if (settings.verbose > 1)
                fprintf(stderr,
                    "fd %d wants to timeout, but isn't in read state", c->sfd);
            return;
        }

        if (settings.verbose > 1)
            fprintf(stderr, "Closing idle fd %d\n", c->sfd);

        c->thread->stats.idle_kicks++;

        conn_set_state(c, conn_closing);
        drive_machine(c);
    }
}
