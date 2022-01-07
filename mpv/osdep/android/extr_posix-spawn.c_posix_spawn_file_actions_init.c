
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ used; } ;
typedef TYPE_1__ posix_spawn_file_actions_t ;



int posix_spawn_file_actions_init(posix_spawn_file_actions_t *fa)
{
    fa->used = 0;
    return 0;
}
