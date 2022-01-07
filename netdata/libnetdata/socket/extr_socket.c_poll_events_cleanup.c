
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t max; int * inf; int * fds; } ;
typedef TYPE_1__ POLLJOB ;
typedef int POLLINFO ;


 int freez (int *) ;
 int poll_close_fd (int *) ;

__attribute__((used)) static void poll_events_cleanup(void *data) {
    POLLJOB *p = (POLLJOB *)data;

    size_t i;
    for(i = 0 ; i <= p->max ; i++) {
        POLLINFO *pi = &p->inf[i];
        poll_close_fd(pi);
    }

    freez(p->fds);
    freez(p->inf);
}
