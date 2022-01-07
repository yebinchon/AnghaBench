
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target {int* target_fds; int openother; int openeventpolls; int opensignalfds; int opentimerfds; int openeventfds; int openinotifies; int opensockets; int openpipes; int openfiles; } ;
struct TYPE_2__ {int type; } ;
 TYPE_1__* all_files ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void aggregate_fd_on_target(int fd, struct target *w) {
    if(unlikely(!w))
        return;

    if(unlikely(w->target_fds[fd])) {


        w->target_fds[fd]++;
        return;
    }



    w->target_fds[fd]++;

    switch(all_files[fd].type) {
        case 134:
            w->openfiles++;
            break;

        case 131:
            w->openpipes++;
            break;

        case 129:
            w->opensockets++;
            break;

        case 133:
            w->openinotifies++;
            break;

        case 136:
            w->openeventfds++;
            break;

        case 128:
            w->opentimerfds++;
            break;

        case 130:
            w->opensignalfds++;
            break;

        case 135:
            w->openeventpolls++;
            break;

        case 132:
            w->openother++;
            break;
    }
}
