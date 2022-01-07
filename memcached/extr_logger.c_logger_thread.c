
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int useconds_t ;
struct logger_stats {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ logger ;


 int L_DEBUG (char*) ;
 int MAX_LOGGER_SLEEP ;
 int MIN_LOGGER_SLEEP ;
 int WATCHER_ALL ;
 scalar_t__ do_run_logger_thread ;
 TYPE_1__* logger_stack_head ;
 int logger_stack_lock ;
 int logger_thread_poll_watchers (int,int ) ;
 scalar_t__ logger_thread_read (TYPE_1__*,struct logger_stats*) ;
 int logger_thread_sum_stats (struct logger_stats*) ;
 int memset (struct logger_stats*,int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int usleep (int) ;

__attribute__((used)) static void *logger_thread(void *arg) {
    useconds_t to_sleep = MIN_LOGGER_SLEEP;
    L_DEBUG("LOGGER: Starting logger thread\n");


    while (do_run_logger_thread) {
        int found_logs = 0;
        logger *l;
        struct logger_stats ls;
        memset(&ls, 0, sizeof(struct logger_stats));


        if (to_sleep > MIN_LOGGER_SLEEP)
            usleep(to_sleep);


        pthread_mutex_lock(&logger_stack_lock);
        for (l = logger_stack_head; l != ((void*)0); l=l->next) {

            found_logs += logger_thread_read(l, &ls);
        }

        logger_thread_poll_watchers(1, WATCHER_ALL);
        pthread_mutex_unlock(&logger_stack_lock);


        if (!found_logs) {
            if (to_sleep < MAX_LOGGER_SLEEP)
                to_sleep += to_sleep / 8;
            if (to_sleep > MAX_LOGGER_SLEEP)
                to_sleep = MAX_LOGGER_SLEEP;
        } else {
            to_sleep /= 2;
            if (to_sleep < MIN_LOGGER_SLEEP)
                to_sleep = MIN_LOGGER_SLEEP;
        }
        logger_thread_sum_stats(&ls);
    }

    return ((void*)0);
}
