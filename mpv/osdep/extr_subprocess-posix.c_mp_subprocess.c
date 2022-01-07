
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* subprocess_read_cb ) (void*,char*,scalar_t__) ;
struct pollfd {int fd; scalar_t__ revents; int events; } ;
struct mp_cancel {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int posix_spawn_file_actions_t ;
typedef int pid_t ;
typedef int buf ;


 scalar_t__ EINTR ;
 int MP_ARRAY_SIZE (struct pollfd*) ;
 int MP_SUBPROCESS_EKILLED_BY_US ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int POLLIN ;
 int SAFE_CLOSE (int) ;
 int SIGKILL ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int environ ;
 scalar_t__ errno ;
 int kill (int,int ) ;
 int mp_cancel_get_fd (struct mp_cancel*) ;
 scalar_t__ mp_make_cloexec_pipe (int*) ;
 int open (char*,int) ;
 scalar_t__ posix_spawn_file_actions_adddup2 (int *,int,int) ;
 int posix_spawn_file_actions_destroy (int *) ;
 scalar_t__ posix_spawn_file_actions_init (int *) ;
 scalar_t__ posix_spawnp (int*,char*,int *,int *,char**,int ) ;
 scalar_t__ read (int,char*,int) ;
 scalar_t__ sparse_poll (struct pollfd*,int ,int) ;
 int stub1 (void*,char*,scalar_t__) ;
 scalar_t__ waitpid (int,int*,int ) ;

int mp_subprocess(char **args, struct mp_cancel *cancel, void *ctx,
                  subprocess_read_cb on_stdout, subprocess_read_cb on_stderr,
                  char **error)
{
    posix_spawn_file_actions_t fa;
    bool fa_destroy = 0;
    int status = -1;
    int p_stdout[2] = {-1, -1};
    int p_stderr[2] = {-1, -1};
    int devnull = -1;
    pid_t pid = -1;
    bool spawned = 0;
    bool killed_by_us = 0;

    if (on_stdout && mp_make_cloexec_pipe(p_stdout) < 0)
        goto done;
    if (on_stderr && mp_make_cloexec_pipe(p_stderr) < 0)
        goto done;

    devnull = open("/dev/null", O_RDONLY | O_CLOEXEC);
    if (devnull < 0)
        goto done;

    if (posix_spawn_file_actions_init(&fa))
        goto done;
    fa_destroy = 1;

    if (posix_spawn_file_actions_adddup2(&fa, devnull, 0))
        goto done;
    if (p_stdout[1] >= 0 && posix_spawn_file_actions_adddup2(&fa, p_stdout[1], 1))
        goto done;
    if (p_stderr[1] >= 0 && posix_spawn_file_actions_adddup2(&fa, p_stderr[1], 2))
        goto done;

    if (posix_spawnp(&pid, args[0], &fa, ((void*)0), args, environ)) {
        pid = -1;
        goto done;
    }
    spawned = 1;

    SAFE_CLOSE(p_stdout[1]);
    SAFE_CLOSE(p_stderr[1]);
    SAFE_CLOSE(devnull);

    int *read_fds[2] = {&p_stdout[0], &p_stderr[0]};
    subprocess_read_cb read_cbs[2] = {on_stdout, on_stderr};

    while (p_stdout[0] >= 0 || p_stderr[0] >= 0) {
        struct pollfd fds[] = {
            {.events = POLLIN, .fd = *read_fds[0]},
            {.events = POLLIN, .fd = *read_fds[1]},
            {.events = POLLIN, .fd = cancel ? mp_cancel_get_fd(cancel) : -1},
        };
        if (sparse_poll(fds, MP_ARRAY_SIZE(fds), -1) < 0 && errno != EINTR)
            break;
        for (int n = 0; n < 2; n++) {
            if (fds[n].revents) {
                char buf[4096];
                ssize_t r = read(*read_fds[n], buf, sizeof(buf));
                if (r < 0 && errno == EINTR)
                    continue;
                if (r > 0 && read_cbs[n])
                    read_cbs[n](ctx, buf, r);
                if (r <= 0)
                    SAFE_CLOSE(*read_fds[n]);
            }
        }
        if (fds[2].revents) {
            kill(pid, SIGKILL);
            killed_by_us = 1;
            break;
        }
    }





    while (waitpid(pid, &status, 0) < 0 && errno == EINTR) {}

done:
    if (fa_destroy)
        posix_spawn_file_actions_destroy(&fa);
    SAFE_CLOSE(p_stdout[0]);
    SAFE_CLOSE(p_stdout[1]);
    SAFE_CLOSE(p_stderr[0]);
    SAFE_CLOSE(p_stderr[1]);
    SAFE_CLOSE(devnull);

    if (!spawned || (WIFEXITED(status) && WEXITSTATUS(status) == 127)) {
        *error = "init";
        status = -1;
    } else if (WIFEXITED(status)) {
        *error = ((void*)0);
        status = WEXITSTATUS(status);
    } else {
        *error = "killed";
        status = killed_by_us ? MP_SUBPROCESS_EKILLED_BY_US : -1;
    }

    return status;
}
