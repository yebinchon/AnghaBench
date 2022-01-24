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
 int OPENVPN_EXECVE_ERROR ; 
 int /*<<< orphan*/  OPENVPN_EXECVE_FAILURE ; 
 int OPENVPN_EXECVE_NOT_ALLOWED ; 
 char* SCRIPT_SECURITY_WARNING ; 
 scalar_t__ SSEC_SCRIPTS ; 
 int /*<<< orphan*/  FUNC0 (char const*,char* const*,char* const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct gc_arena*) ; 
 struct gc_arena FUNC4 () ; 
 scalar_t__ FUNC5 (struct env_set const*,int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (unsigned int const) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

int
FUNC10(const struct argv *a, const struct env_set *es, const unsigned int flags)
{
    struct gc_arena gc = FUNC4();
    int ret = OPENVPN_EXECVE_ERROR;
    static bool warn_shown = false;

    if (a && a->argv[0])
    {
#if defined(ENABLE_FEATURE_EXECVE)
        if (openvpn_execve_allowed(flags))
        {
            const char *cmd = a->argv[0];
            char *const *argv = a->argv;
            char *const *envp = (char *const *)make_env_array(es, true, &gc);
            pid_t pid;

            pid = fork();
            if (pid == (pid_t)0) /* child side */
            {
                execve(cmd, argv, envp);
                exit(OPENVPN_EXECVE_FAILURE);
            }
            else if (pid < (pid_t)0) /* fork failed */
            {
                msg(M_ERR, "openvpn_execve: unable to fork");
            }
            else /* parent side */
            {
                if (waitpid(pid, &ret, 0) != pid)
                {
                    ret = OPENVPN_EXECVE_ERROR;
                }
            }
        }
        else
        {
            ret = OPENVPN_EXECVE_NOT_ALLOWED;
            if (!warn_shown && (script_security() < SSEC_SCRIPTS))
            {
                msg(M_WARN, SCRIPT_SECURITY_WARNING);
                warn_shown = true;
            }
        }
#else  /* if defined(ENABLE_FEATURE_EXECVE) */
        FUNC6(M_WARN, "openvpn_execve: execve function not available");
#endif /* if defined(ENABLE_FEATURE_EXECVE) */
    }
    else
    {
        FUNC6(M_FATAL, "openvpn_execve: called with empty argv");
    }

    FUNC3(&gc);
    return ret;
}