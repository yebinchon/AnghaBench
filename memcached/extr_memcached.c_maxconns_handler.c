
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;


 int accept_new_conns (int) ;
 int allow_new_conns ;
 int event_base_set (int ,int *) ;
 int evtimer_add (int *,struct timeval*) ;
 int evtimer_del (int *) ;
 int evtimer_set (int *,void (*) (int const,short const,void*),int ) ;
 int main_base ;
 int maxconnsevent ;

__attribute__((used)) static void maxconns_handler(const int fd, const short which, void *arg) {
    struct timeval t = {.tv_sec = 0, .tv_usec = 10000};

    if (fd == -42 || allow_new_conns == 0) {

        evtimer_set(&maxconnsevent, maxconns_handler, 0);
        event_base_set(main_base, &maxconnsevent);
        evtimer_add(&maxconnsevent, &t);
    } else {
        evtimer_del(&maxconnsevent);
        accept_new_conns(1);
    }
}
