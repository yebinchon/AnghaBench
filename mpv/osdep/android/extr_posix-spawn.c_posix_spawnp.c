
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int posix_spawnattr_t ;
struct TYPE_5__ {int used; TYPE_1__* action; } ;
typedef TYPE_2__ posix_spawn_file_actions_t ;
typedef int pid_t ;
struct TYPE_4__ {int newfiledes; int filedes; } ;


 int EINVAL ;
 int _exit (int) ;
 int dup2 (int ,int ) ;
 int errno ;
 int execvpe (char const*,char* const*,char* const*) ;
 int fork () ;

int posix_spawnp(pid_t *pid, const char *file,
    const posix_spawn_file_actions_t *fa,
    const posix_spawnattr_t *attrp,
    char *const argv[], char *const envp[])
{
    pid_t p;

    if (attrp != ((void*)0))
        return EINVAL;

    p = fork();
    if (p == -1)
        return errno;

    if (p == 0) {
        for (int i = 0; i < fa->used; i++) {
            int err = dup2(fa->action[i].filedes, fa->action[i].newfiledes);
            if (err == -1)
                goto fail;
        }
        execvpe(file, argv, envp);
fail:
        _exit(127);
    }

    *pid = p;
    return 0;
}
