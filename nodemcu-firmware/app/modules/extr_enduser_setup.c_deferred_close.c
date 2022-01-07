
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_pcb {int dummy; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int force_abort ;
 int handle_remote_close ;
 int tcp_poll (struct tcp_pcb*,int ,int) ;
 int tcp_recv (struct tcp_pcb*,int ) ;
 int tcp_sent (struct tcp_pcb*,int ) ;

__attribute__((used)) static inline void deferred_close (struct tcp_pcb *pcb)
{
  ENDUSER_SETUP_DEBUG("deferred_close");

  tcp_poll (pcb, force_abort, 15);
  tcp_recv (pcb, handle_remote_close);
  tcp_sent (pcb, 0);
}
