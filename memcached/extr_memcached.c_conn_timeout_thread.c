
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int useconds_t ;
typedef scalar_t__ rel_time_t ;
struct TYPE_6__ {scalar_t__ state; scalar_t__ last_cmd_time; TYPE_1__* thread; int transport; } ;
typedef TYPE_2__ conn ;
struct TYPE_7__ {int verbose; scalar_t__ idle_timeout; } ;
struct TYPE_5__ {int notify_send_fd; } ;


 int CONNS_PER_SLICE ;
 int IS_TCP (int ) ;
 int TIMEOUT_MSG_SIZE ;
 scalar_t__ conn_new_cmd ;
 scalar_t__ conn_read ;
 TYPE_2__** conns ;
 scalar_t__ current_time ;
 scalar_t__ do_run_conn_timeout_thread ;
 int fprintf (int ,char*,...) ;
 int max_fds ;
 int memcpy (char*,int*,int) ;
 int perror (char*) ;
 TYPE_3__ settings ;
 int stderr ;
 int usleep (int) ;
 int write (int ,char*,int) ;

__attribute__((used)) static void *conn_timeout_thread(void *arg) {
    int i;
    conn *c;
    char buf[TIMEOUT_MSG_SIZE];
    rel_time_t oldest_last_cmd;
    int sleep_time;
    useconds_t timeslice = 1000000 / (max_fds / CONNS_PER_SLICE);

    while(do_run_conn_timeout_thread) {
        if (settings.verbose > 2)
            fprintf(stderr, "idle timeout thread at top of connection list\n");

        oldest_last_cmd = current_time;

        for (i = 0; i < max_fds; i++) {
            if ((i % CONNS_PER_SLICE) == 0) {
                if (settings.verbose > 2)
                    fprintf(stderr, "idle timeout thread sleeping for %ulus\n",
                        (unsigned int)timeslice);
                usleep(timeslice);
            }

            if (!conns[i])
                continue;

            c = conns[i];

            if (!IS_TCP(c->transport))
                continue;

            if (c->state != conn_new_cmd && c->state != conn_read)
                continue;

            if ((current_time - c->last_cmd_time) > settings.idle_timeout) {
                buf[0] = 't';
                memcpy(&buf[1], &i, sizeof(int));
                if (write(c->thread->notify_send_fd, buf, TIMEOUT_MSG_SIZE)
                    != TIMEOUT_MSG_SIZE)
                    perror("Failed to write timeout to notify pipe");
            } else {
                if (c->last_cmd_time < oldest_last_cmd)
                    oldest_last_cmd = c->last_cmd_time;
            }
        }


        sleep_time = settings.idle_timeout - (current_time - oldest_last_cmd) + 1;
        if (sleep_time <= 0)
            sleep_time = 1;

        if (settings.verbose > 2)
            fprintf(stderr,
                    "idle timeout thread finished pass, sleeping for %ds\n",
                    sleep_time);
        usleep((useconds_t) sleep_time * 1000000);
    }

    return ((void*)0);
}
