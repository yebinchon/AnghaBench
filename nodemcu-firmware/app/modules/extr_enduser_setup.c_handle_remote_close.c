
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_pcb {int dummy; } ;
struct pbuf {int tot_len; } ;
typedef int err_t ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int ERR_OK ;
 int pbuf_free (struct pbuf*) ;
 int tcp_close (struct tcp_pcb*) ;
 int tcp_poll (struct tcp_pcb*,int ,int ) ;
 int tcp_recv (struct tcp_pcb*,int ) ;
 int tcp_recved (struct tcp_pcb*,int ) ;

__attribute__((used)) static err_t handle_remote_close (void *arg, struct tcp_pcb *pcb, struct pbuf *p, err_t err)
{
  ENDUSER_SETUP_DEBUG("handle_remote_close");

  (void)arg; (void)err;
  if (p)
  {
    tcp_recved (pcb, p->tot_len);
    pbuf_free (p);
  }
  else
  {
    tcp_recv (pcb, 0);
    tcp_poll (pcb, 0, 0);
    tcp_close (pcb);
  }
  return ERR_OK;
}
