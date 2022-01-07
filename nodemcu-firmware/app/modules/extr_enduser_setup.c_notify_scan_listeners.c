
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ conn; struct TYPE_3__* next; } ;
typedef TYPE_1__ scan_listener_t ;
struct TYPE_4__ {TYPE_1__* scan_listeners; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 scalar_t__ ERR_OK ;
 int TCP_WRITE_FLAG_COPY ;
 int close_once_sent ;
 int free_scan_listeners () ;
 TYPE_2__* state ;
 int tcp_abort (scalar_t__) ;
 int tcp_sent (scalar_t__,int ) ;
 scalar_t__ tcp_write (scalar_t__,char const*,size_t,int ) ;

__attribute__((used)) static void notify_scan_listeners (const char *payload, size_t sz)
{
  ENDUSER_SETUP_DEBUG("notify_scan_listeners");

  if (!state)
  {
    return;
  }

  for (scan_listener_t *l = state->scan_listeners; l; l = l->next)
  {
    if (tcp_write (l->conn, payload, sz, TCP_WRITE_FLAG_COPY) != ERR_OK)
    {
      ENDUSER_SETUP_DEBUG("failed to send wifi list");
      tcp_abort (l->conn);
    }
    else
      tcp_sent (l->conn, close_once_sent);
    l->conn = 0;
  }

  free_scan_listeners ();
}
