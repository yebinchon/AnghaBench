
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_7__ {int sfd; struct TYPE_7__* next; } ;
typedef TYPE_1__ conn ;
struct TYPE_10__ {int backlog; } ;
struct TYPE_9__ {int listen_disabled_num; struct timeval maxconns_entered; int time_in_listen_disabled_us; } ;
struct TYPE_8__ {int accepting_conns; } ;


 int EV_PERSIST ;
 int EV_READ ;
 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 int allow_new_conns ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ listen (int ,int ) ;
 TYPE_1__* listen_conn ;
 int maxconns_handler (int,int ,int ) ;
 int perror (char*) ;
 TYPE_5__ settings ;
 TYPE_4__ stats ;
 TYPE_3__ stats_state ;
 int update_event (TYPE_1__*,int) ;

void do_accept_new_conns(const bool do_accept) {
    conn *next;

    for (next = listen_conn; next; next = next->next) {
        if (do_accept) {
            update_event(next, EV_READ | EV_PERSIST);
            if (listen(next->sfd, settings.backlog) != 0) {
                perror("listen");
            }
        }
        else {
            update_event(next, 0);
            if (listen(next->sfd, 0) != 0) {
                perror("listen");
            }
        }
    }

    if (do_accept) {
        struct timeval maxconns_exited;
        uint64_t elapsed_us;
        gettimeofday(&maxconns_exited,((void*)0));
        STATS_LOCK();
        elapsed_us =
            (maxconns_exited.tv_sec - stats.maxconns_entered.tv_sec) * 1000000
            + (maxconns_exited.tv_usec - stats.maxconns_entered.tv_usec);
        stats.time_in_listen_disabled_us += elapsed_us;
        stats_state.accepting_conns = 1;
        STATS_UNLOCK();
    } else {
        STATS_LOCK();
        stats_state.accepting_conns = 0;
        gettimeofday(&stats.maxconns_entered,((void*)0));
        stats.listen_disabled_num++;
        STATS_UNLOCK();
        allow_new_conns = 0;
        maxconns_handler(-42, 0, 0);
    }
}
