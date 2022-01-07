
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ scan_listener_t ;
struct TYPE_6__ {TYPE_1__* scan_listeners; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int free (TYPE_1__*) ;
 TYPE_2__* state ;

__attribute__((used)) static void remove_scan_listener (scan_listener_t *l)
{
  ENDUSER_SETUP_DEBUG("remove_scan_listener");

  if (state)
  {
    scan_listener_t **sl = &state->scan_listeners;
    while (*sl)
    {

      if (*sl == l)
      {
        *sl = l->next;
        free (l);

      }
      else
        sl = &(*sl)->next;
    }
  }
}
