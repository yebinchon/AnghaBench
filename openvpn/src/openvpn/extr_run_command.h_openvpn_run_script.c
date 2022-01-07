
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_set {int dummy; } ;
struct argv {int dummy; } ;
typedef int msg ;


 unsigned int const S_SCRIPT ;
 int openvpn_execve_check (struct argv const*,struct env_set const*,unsigned int const,char*) ;
 int openvpn_snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static inline bool
openvpn_run_script(const struct argv *a, const struct env_set *es,
                   const unsigned int flags, const char *hook)
{
    char msg[256];

    openvpn_snprintf(msg, sizeof(msg),
                     "WARNING: Failed running command (%s)", hook);
    return openvpn_execve_check(a, es, flags | S_SCRIPT, msg);
}
