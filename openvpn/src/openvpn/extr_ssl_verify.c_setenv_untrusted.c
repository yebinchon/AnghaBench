
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tls_session {int untrusted_addr; TYPE_1__* opt; } ;
struct TYPE_2__ {int es; } ;


 int SA_IP_PORT ;
 int setenv_link_socket_actual (int ,char*,int *,int ) ;

__attribute__((used)) static void
setenv_untrusted(struct tls_session *session)
{
    setenv_link_socket_actual(session->opt->es, "untrusted", &session->untrusted_addr, SA_IP_PORT);
}
