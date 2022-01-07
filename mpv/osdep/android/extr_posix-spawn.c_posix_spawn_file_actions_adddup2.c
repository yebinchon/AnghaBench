
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t used; TYPE_1__* action; } ;
typedef TYPE_2__ posix_spawn_file_actions_t ;
struct TYPE_4__ {int filedes; int newfiledes; } ;


 size_t MAX_FILE_ACTIONS ;

int posix_spawn_file_actions_adddup2(posix_spawn_file_actions_t *fa, int fd, int newfd)
{
    if (fa->used >= MAX_FILE_ACTIONS)
        return -1;
    fa->action[fa->used].filedes = fd;
    fa->action[fa->used].newfiledes = newfd;
    fa->used++;
    return 0;
}
