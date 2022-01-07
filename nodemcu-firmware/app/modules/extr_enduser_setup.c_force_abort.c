
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_pcb {int dummy; } ;
typedef int err_t ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int ERR_ABRT ;
 int tcp_abort (struct tcp_pcb*) ;
 int tcp_poll (struct tcp_pcb*,int ,int ) ;

__attribute__((used)) static err_t force_abort (void *arg, struct tcp_pcb *pcb)
{
  ENDUSER_SETUP_DEBUG("force_abort");

  (void)arg;
  tcp_poll (pcb, 0, 0);
  tcp_abort (pcb);
  return ERR_ABRT;
}
