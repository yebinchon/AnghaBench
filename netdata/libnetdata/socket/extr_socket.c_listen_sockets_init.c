
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* fds; int* fds_types; scalar_t__ failed; scalar_t__ opened; int ** fds_names; } ;
typedef TYPE_1__ LISTEN_SOCKETS ;


 size_t MAX_LISTEN_FDS ;

__attribute__((used)) static inline void listen_sockets_init(LISTEN_SOCKETS *sockets) {
    size_t i;
    for(i = 0; i < MAX_LISTEN_FDS ;i++) {
        sockets->fds[i] = -1;
        sockets->fds_names[i] = ((void*)0);
        sockets->fds_types[i] = -1;
    }

    sockets->opened = 0;
    sockets->failed = 0;
}
