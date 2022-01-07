
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
 int OPENVPN_EXECVE_FAILURE ;
 char* SCRIPT_SECURITY_WARNING ;
 scalar_t__ SSEC_BUILT_IN ;
 scalar_t__ SSEC_SCRIPTS ;
 int close (int) ;
 int dup2 (int,int) ;
 int execve (char const*,char* const*,char* const*) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 scalar_t__ make_env_array (struct env_set const*,int,struct gc_arena*) ;
 int msg (int ,char*,...) ;
 scalar_t__ pipe (int*) ;
 scalar_t__ script_security () ;
 int waitpid (scalar_t__,int*,int ) ;

int
openvpn_popen(const struct argv *a, const struct env_set *es)
{
    struct gc_arena gc = gc_new();
    int ret = -1;
    static bool warn_shown = 0;

    if (a && a->argv[0])
    {
        msg(M_WARN, "openvpn_popen: execve function not available");

    }
    else
    {
        msg(M_FATAL, "openvpn_popen: called with empty argv");
    }

    gc_free(&gc);
    return ret;
}
