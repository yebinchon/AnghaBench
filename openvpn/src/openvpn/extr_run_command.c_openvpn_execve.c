
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct argv {char** argv; } ;
typedef scalar_t__ pid_t ;


 int M_ERR ;
 int M_FATAL ;
 int M_WARN ;
 int OPENVPN_EXECVE_ERROR ;
 int OPENVPN_EXECVE_FAILURE ;
 int OPENVPN_EXECVE_NOT_ALLOWED ;
 char* SCRIPT_SECURITY_WARNING ;
 scalar_t__ SSEC_SCRIPTS ;
 int execve (char const*,char* const*,char* const*) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 scalar_t__ make_env_array (struct env_set const*,int,struct gc_arena*) ;
 int msg (int ,char*) ;
 scalar_t__ openvpn_execve_allowed (unsigned int const) ;
 scalar_t__ script_security () ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

int
openvpn_execve(const struct argv *a, const struct env_set *es, const unsigned int flags)
{
    struct gc_arena gc = gc_new();
    int ret = OPENVPN_EXECVE_ERROR;
    static bool warn_shown = 0;

    if (a && a->argv[0])
    {
        msg(M_WARN, "openvpn_execve: execve function not available");

    }
    else
    {
        msg(M_FATAL, "openvpn_execve: called with empty argv");
    }

    gc_free(&gc);
    return ret;
}
