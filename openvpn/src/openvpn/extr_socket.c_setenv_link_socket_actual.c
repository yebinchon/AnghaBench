
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_socket_actual {int dest; } ;
struct env_set {int dummy; } ;


 int setenv_sockaddr (struct env_set*,char const*,int *,unsigned int const) ;

void
setenv_link_socket_actual(struct env_set *es,
                          const char *name_prefix,
                          const struct link_socket_actual *act,
                          const unsigned int flags)
{
    setenv_sockaddr(es, name_prefix, &act->dest, flags);
}
