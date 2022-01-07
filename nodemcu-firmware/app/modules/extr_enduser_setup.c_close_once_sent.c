
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct tcp_pcb {int dummy; } ;
typedef int err_t ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int ERR_OK ;
 int deferred_close (struct tcp_pcb*) ;

__attribute__((used)) static err_t close_once_sent (void *arg, struct tcp_pcb *pcb, u16_t len)
{
  ENDUSER_SETUP_DEBUG("close_once_sent");

  (void)arg; (void)len;
  deferred_close (pcb);
  return ERR_OK;
}
