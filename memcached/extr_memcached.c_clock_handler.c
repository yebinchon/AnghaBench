
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct timespec {scalar_t__ tv_sec; } ;
typedef scalar_t__ rel_time_t ;
struct TYPE_4__ {int sig_hup; int auth_file; } ;
struct TYPE_3__ {int curr_items; } ;


 int CLOCK_MONOTONIC ;
 int assoc_start_expand (int ) ;
 int authfile_load (int ) ;
 int clock_gettime (int ,struct timespec*) ;
 int clockevent ;
 scalar_t__ current_time ;
 int event_base_set (int ,int *) ;
 int evtimer_add (int *,struct timeval*) ;
 int evtimer_del (int *) ;
 int evtimer_set (int *,void (*) (int const,short const,void*),int ) ;
 int gettimeofday (struct timeval*,int *) ;
 int main_base ;
 scalar_t__ monotonic ;
 scalar_t__ monotonic_start ;
 int process_started ;
 TYPE_2__ settings ;
 TYPE_1__ stats_state ;

__attribute__((used)) static void clock_handler(const int fd, const short which, void *arg) {
    struct timeval t = {.tv_sec = 1, .tv_usec = 0};
    static bool initialized = 0;

    if (initialized) {

        evtimer_del(&clockevent);
    } else {
        initialized = 1;
    }



    assoc_start_expand(stats_state.curr_items);


    if (settings.sig_hup) {
        settings.sig_hup = 0;

        authfile_load(settings.auth_file);
    }

    evtimer_set(&clockevent, clock_handler, 0);
    event_base_set(main_base, &clockevent);
    evtimer_add(&clockevent, &t);
    {
        struct timeval tv;
        gettimeofday(&tv, ((void*)0));
        current_time = (rel_time_t) (tv.tv_sec - process_started);
    }
}
