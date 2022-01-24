#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct argv {char** argv; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  M_FATAL ; 
 int /*<<< orphan*/  M_WARN ; 
 int /*<<< orphan*/  OPENVPN_EXECVE_FAILURE ; 
 char* SCRIPT_SECURITY_WARNING ; 
 scalar_t__ SSEC_BUILT_IN ; 
 scalar_t__ SSEC_SCRIPTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char* const*,char* const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct gc_arena*) ; 
 struct gc_arena FUNC6 () ; 
 scalar_t__ FUNC7 (struct env_set const*,int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC9 (int*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

int
FUNC12(const struct argv *a,  const struct env_set *es)
{
    struct gc_arena gc = FUNC6();
    int ret = -1;
    static bool warn_shown = false;

    if (a && a->argv[0])
    {
#if defined(ENABLE_FEATURE_EXECVE)
        if (script_security() >= SSEC_BUILT_IN)
        {
            const char *cmd = a->argv[0];
            char *const *argv = a->argv;
            char *const *envp = (char *const *)make_env_array(es, true, &gc);
            pid_t pid;
            int pipe_stdout[2];

            if (pipe(pipe_stdout) == 0)
            {
                pid = fork();
                if (pid == (pid_t)0)       /* child side */
                {
                    close(pipe_stdout[0]);         /* Close read end */
                    dup2(pipe_stdout[1],1);
                    execve(cmd, argv, envp);
                    exit(OPENVPN_EXECVE_FAILURE);
                }
                else if (pid > (pid_t)0)       /* parent side */
                {
                    int status = 0;

                    close(pipe_stdout[1]);        /* Close write end */
                    waitpid(pid, &status, 0);
                    ret = pipe_stdout[0];
                }
                else       /* fork failed */
                {
                    close(pipe_stdout[0]);
                    close(pipe_stdout[1]);
                    msg(M_ERR, "openvpn_popen: unable to fork %s", cmd);
                }
            }
            else
            {
                msg(M_WARN, "openvpn_popen: unable to create stdout pipe for %s", cmd);
                ret = -1;
            }
        }
        else if (!warn_shown && (script_security() < SSEC_SCRIPTS))
        {
            msg(M_WARN, SCRIPT_SECURITY_WARNING);
            warn_shown = true;
        }
#else  /* if defined(ENABLE_FEATURE_EXECVE) */
        FUNC8(M_WARN, "openvpn_popen: execve function not available");
#endif /* if defined(ENABLE_FEATURE_EXECVE) */
    }
    else
    {
        FUNC8(M_FATAL, "openvpn_popen: called with empty argv");
    }

    FUNC5(&gc);
    return ret;
}