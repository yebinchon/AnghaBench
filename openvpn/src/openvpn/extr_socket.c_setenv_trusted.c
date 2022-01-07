
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link_socket_info {TYPE_1__* lsa; } ;
struct env_set {int dummy; } ;
struct TYPE_2__ {int actual; } ;


 int SA_IP_PORT ;
 int setenv_link_socket_actual (struct env_set*,char*,int *,int ) ;

void
setenv_trusted(struct env_set *es, const struct link_socket_info *info)
{
    setenv_link_socket_actual(es, "trusted", &info->lsa->actual, SA_IP_PORT);
}
