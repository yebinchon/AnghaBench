#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_uint_t ;
struct TYPE_19__ {scalar_t__ data; } ;
typedef  TYPE_4__ ngx_str_t ;
struct TYPE_15__ {int /*<<< orphan*/  handler; int /*<<< orphan*/  log; TYPE_3__* data; } ;
struct TYPE_18__ {int fd; TYPE_1__* write; TYPE_13__* read; TYPE_5__* data; } ;
struct TYPE_16__ {TYPE_3__* data; } ;
struct TYPE_20__ {int active; int pid; int pipefd; int* save_pid; int /*<<< orphan*/  log; TYPE_13__ read_evt; TYPE_3__ dummy_conn; TYPE_1__ write_evt; int /*<<< orphan*/ * eval; int /*<<< orphan*/  eval_ctx; int /*<<< orphan*/  kill_signal; scalar_t__ managed; TYPE_6__* conf; } ;
typedef  TYPE_5__ ngx_rtmp_exec_t ;
struct TYPE_14__ {scalar_t__ data; } ;
struct TYPE_17__ {int /*<<< orphan*/  nelts; TYPE_4__* elts; } ;
struct TYPE_21__ {TYPE_11__ cmd; TYPE_2__ args; } ;
typedef  TYPE_6__ ngx_rtmp_exec_conf_t ;
typedef  int ngx_pid_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;

/* Variables and functions */
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  NGX_DONE ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  NGX_READ_EVENT ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PR_SET_PDEATHSIG ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  _SC_OPEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,...) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_13__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char** FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  ngx_rtmp_exec_child_dead ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (char*) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC20(ngx_rtmp_exec_t *e)
{
    int                     fd, ret, maxfd, pipefd[2];
    char                  **args, **arg_out;
    ngx_pid_t               pid;
    ngx_str_t              *arg_in, a;
    ngx_uint_t              n;
    ngx_rtmp_exec_conf_t   *ec;

    ec = e->conf;

    FUNC10(NGX_LOG_INFO, e->log, 0,
                  "exec: starting %s child '%V'",
                  e->managed ? "managed" : "unmanaged", &ec->cmd);

    pipefd[0] = -1;
    pipefd[1] = -1;

    if (e->managed) {

        if (e->active) {
            FUNC8(NGX_LOG_DEBUG_RTMP, e->log, 0,
                           "exec: already active '%V'", &ec->cmd);
            return NGX_OK;
        }

        if (FUNC15(pipefd) == -1) {
            FUNC10(NGX_LOG_INFO, e->log, ngx_errno,
                          "exec: pipe failed");
            return NGX_ERROR;
        }

        /* make pipe write end survive through exec */

        ret = FUNC4(pipefd[1], F_GETFD);

        if (ret != -1) {
            ret &= ~FD_CLOEXEC;
            ret = FUNC4(pipefd[1], F_SETFD, ret);
        }

        if (ret == -1) {

            FUNC0(pipefd[0]);
            FUNC0(pipefd[1]);

            FUNC10(NGX_LOG_INFO, e->log, ngx_errno,
                          "exec: fcntl failed");

            return NGX_ERROR;
        }
    }

    pid = FUNC5();

    switch (pid) {

        case -1:

            /* failure */

            if (pipefd[0] != -1) {
                FUNC0(pipefd[0]);
            }

            if (pipefd[1] != -1) {
                FUNC0(pipefd[1]);
            }

            FUNC10(NGX_LOG_INFO, e->log, ngx_errno,
                          "exec: fork failed");

            return NGX_ERROR;

        case 0:

            /* child */

#if (NGX_LINUX)
            if (e->managed) {
                prctl(PR_SET_PDEATHSIG, e->kill_signal, 0, 0, 0);
            }
#endif

            /* close all descriptors but pipe write end */

            maxfd = FUNC19(_SC_OPEN_MAX);
            for (fd = 0; fd < maxfd; ++fd) {
                if (fd == pipefd[1]) {
                    continue;
                }

                FUNC0(fd);
            }

            fd = FUNC14("/dev/null", O_RDWR);

            FUNC1(fd, STDIN_FILENO);
            FUNC1(fd, STDOUT_FILENO);
            FUNC1(fd, STDERR_FILENO);

            args = FUNC7((ec->args.nelts + 2) * sizeof(char *), e->log);
            if (args == NULL) {
                FUNC3(1);
            }

            arg_in = ec->args.elts;
            arg_out = args;
            *arg_out++ = (char *) ec->cmd.data;

            for (n = 0; n < ec->args.nelts; n++, ++arg_in) {

                if (e->eval == NULL) {
                    a = *arg_in;
                } else {
                    FUNC11(e->eval_ctx, arg_in, e->eval, &a, e->log);
                }

                if (FUNC12(&a) != NGX_DONE) {
                    continue;
                }

                *arg_out++ = (char *) a.data;
            }

            *arg_out = NULL;

#if (NGX_DEBUG)
            {
                char    **p;

                for (p = args; *p; p++) {
                    ngx_write_fd(STDERR_FILENO, "'", 1);
                    ngx_write_fd(STDERR_FILENO, *p, strlen(*p));
                    ngx_write_fd(STDERR_FILENO, "' ", 2);
                }

                ngx_write_fd(STDERR_FILENO, "\n", 1);
            }
#endif

            if (FUNC2((char *) ec->cmd.data, args) == -1) {
                char    *msg;

                msg = FUNC17(errno);

                FUNC13(STDERR_FILENO, "execvp error: ", 14);
                FUNC13(STDERR_FILENO, msg, FUNC18(msg));
                FUNC13(STDERR_FILENO, "\n", 1);

                FUNC3(1);
            }

            break;

        default:

            /* parent */

            if (pipefd[1] != -1) {
                FUNC0(pipefd[1]);
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
                e->dummy_conn.read  = &e->read_evt;
                e->dummy_conn.write = &e->write_evt;
                e->read_evt.data  = &e->dummy_conn;
                e->write_evt.data = &e->dummy_conn;

                e->read_evt.log = e->log;
                e->read_evt.handler = ngx_rtmp_exec_child_dead;

                if (FUNC6(&e->read_evt, NGX_READ_EVENT, 0) != NGX_OK) {
                    FUNC10(NGX_LOG_INFO, e->log, ngx_errno,
                                  "exec: failed to add child control event");
                }
            }

            FUNC9(NGX_LOG_DEBUG_RTMP, e->log, 0,
                           "exec: child '%V' started pid=%i",
                           &ec->cmd, (ngx_int_t) pid);
            break;
    }

    return NGX_OK;
}