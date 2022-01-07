
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;
typedef struct TYPE_14__ TYPE_11__ ;


typedef int ngx_uint_t ;
struct TYPE_19__ {scalar_t__ data; } ;
typedef TYPE_4__ ngx_str_t ;
struct TYPE_15__ {int handler; int log; TYPE_3__* data; } ;
struct TYPE_18__ {int fd; TYPE_1__* write; TYPE_13__* read; TYPE_5__* data; } ;
struct TYPE_16__ {TYPE_3__* data; } ;
struct TYPE_20__ {int active; int pid; int pipefd; int* save_pid; int log; TYPE_13__ read_evt; TYPE_3__ dummy_conn; TYPE_1__ write_evt; int * eval; int eval_ctx; int kill_signal; scalar_t__ managed; TYPE_6__* conf; } ;
typedef TYPE_5__ ngx_rtmp_exec_t ;
struct TYPE_14__ {scalar_t__ data; } ;
struct TYPE_17__ {int nelts; TYPE_4__* elts; } ;
struct TYPE_21__ {TYPE_11__ cmd; TYPE_2__ args; } ;
typedef TYPE_6__ ngx_rtmp_exec_conf_t ;
typedef int ngx_pid_t ;
typedef int ngx_int_t ;


 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_SETFD ;
 int NGX_DONE ;
 int NGX_ERROR ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_LOG_INFO ;
 int NGX_OK ;
 int NGX_READ_EVENT ;
 int O_RDWR ;
 int PR_SET_PDEATHSIG ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int _SC_OPEN_MAX ;
 int close (int) ;
 int dup2 (int,int ) ;
 int errno ;
 int execvp (char*,char**) ;
 int exit (int) ;
 int fcntl (int,int ,...) ;
 int fork () ;
 int ngx_add_event (TYPE_13__*,int ,int ) ;
 char** ngx_alloc (int,int ) ;
 int ngx_errno ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_11__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_11__*,int ) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 int ngx_rtmp_eval (int ,TYPE_4__*,int *,TYPE_4__*,int ) ;
 int ngx_rtmp_eval_streams (TYPE_4__*) ;
 int ngx_rtmp_exec_child_dead ;
 int ngx_write_fd (int ,char*,int) ;
 int open (char*,int ) ;
 int pipe (int*) ;
 int prctl (int ,int ,int ,int ,int ) ;
 char* strerror (int ) ;
 int strlen (char*) ;
 int sysconf (int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_exec_run(ngx_rtmp_exec_t *e)
{
    int fd, ret, maxfd, pipefd[2];
    char **args, **arg_out;
    ngx_pid_t pid;
    ngx_str_t *arg_in, a;
    ngx_uint_t n;
    ngx_rtmp_exec_conf_t *ec;

    ec = e->conf;

    ngx_log_error(NGX_LOG_INFO, e->log, 0,
                  "exec: starting %s child '%V'",
                  e->managed ? "managed" : "unmanaged", &ec->cmd);

    pipefd[0] = -1;
    pipefd[1] = -1;

    if (e->managed) {

        if (e->active) {
            ngx_log_debug1(NGX_LOG_DEBUG_RTMP, e->log, 0,
                           "exec: already active '%V'", &ec->cmd);
            return NGX_OK;
        }

        if (pipe(pipefd) == -1) {
            ngx_log_error(NGX_LOG_INFO, e->log, ngx_errno,
                          "exec: pipe failed");
            return NGX_ERROR;
        }



        ret = fcntl(pipefd[1], F_GETFD);

        if (ret != -1) {
            ret &= ~FD_CLOEXEC;
            ret = fcntl(pipefd[1], F_SETFD, ret);
        }

        if (ret == -1) {

            close(pipefd[0]);
            close(pipefd[1]);

            ngx_log_error(NGX_LOG_INFO, e->log, ngx_errno,
                          "exec: fcntl failed");

            return NGX_ERROR;
        }
    }

    pid = fork();

    switch (pid) {

        case -1:



            if (pipefd[0] != -1) {
                close(pipefd[0]);
            }

            if (pipefd[1] != -1) {
                close(pipefd[1]);
            }

            ngx_log_error(NGX_LOG_INFO, e->log, ngx_errno,
                          "exec: fork failed");

            return NGX_ERROR;

        case 0:
            maxfd = sysconf(_SC_OPEN_MAX);
            for (fd = 0; fd < maxfd; ++fd) {
                if (fd == pipefd[1]) {
                    continue;
                }

                close(fd);
            }

            fd = open("/dev/null", O_RDWR);

            dup2(fd, STDIN_FILENO);
            dup2(fd, STDOUT_FILENO);
            dup2(fd, STDERR_FILENO);

            args = ngx_alloc((ec->args.nelts + 2) * sizeof(char *), e->log);
            if (args == ((void*)0)) {
                exit(1);
            }

            arg_in = ec->args.elts;
            arg_out = args;
            *arg_out++ = (char *) ec->cmd.data;

            for (n = 0; n < ec->args.nelts; n++, ++arg_in) {

                if (e->eval == ((void*)0)) {
                    a = *arg_in;
                } else {
                    ngx_rtmp_eval(e->eval_ctx, arg_in, e->eval, &a, e->log);
                }

                if (ngx_rtmp_eval_streams(&a) != NGX_DONE) {
                    continue;
                }

                *arg_out++ = (char *) a.data;
            }

            *arg_out = ((void*)0);
            if (execvp((char *) ec->cmd.data, args) == -1) {
                char *msg;

                msg = strerror(errno);

                ngx_write_fd(STDERR_FILENO, "execvp error: ", 14);
                ngx_write_fd(STDERR_FILENO, msg, strlen(msg));
                ngx_write_fd(STDERR_FILENO, "\n", 1);

                exit(1);
            }

            break;

        default:



            if (pipefd[1] != -1) {
                close(pipefd[1]);
            }

            if (pipefd[0] != -1) {

                e->active = 1;
                e->pid = pid;
                e->pipefd = pipefd[0];

                if (e->save_pid) {
                    *e->save_pid = pid;
                }

                e->dummy_conn.fd = e->pipefd;
                e->dummy_conn.data = e;
                e->dummy_conn.read = &e->read_evt;
                e->dummy_conn.write = &e->write_evt;
                e->read_evt.data = &e->dummy_conn;
                e->write_evt.data = &e->dummy_conn;

                e->read_evt.log = e->log;
                e->read_evt.handler = ngx_rtmp_exec_child_dead;

                if (ngx_add_event(&e->read_evt, NGX_READ_EVENT, 0) != NGX_OK) {
                    ngx_log_error(NGX_LOG_INFO, e->log, ngx_errno,
                                  "exec: failed to add child control event");
                }
            }

            ngx_log_debug2(NGX_LOG_DEBUG_RTMP, e->log, 0,
                           "exec: child '%V' started pid=%i",
                           &ec->cmd, (ngx_int_t) pid);
            break;
    }

    return NGX_OK;
}
