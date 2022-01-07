
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ scan_listener_t ;
struct TYPE_5__ {TYPE_1__* scan_listeners; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int free (TYPE_1__*) ;
 TYPE_2__* state ;

__attribute__((used)) static void free_scan_listeners (void)
{
  ENDUSER_SETUP_DEBUG("free_scan_listeners");

  if (!state || !state->scan_listeners)
  {
    return;
  }

  scan_listener_t *l = state->scan_listeners , *next = 0;
  while (l)
  {
    next = l->next;
    free (l);
    l = next;
  }
  state->scan_listeners = 0;
}
