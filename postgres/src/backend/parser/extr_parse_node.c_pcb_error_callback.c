
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int location; int pstate; } ;
typedef TYPE_1__ ParseCallbackState ;


 scalar_t__ ERRCODE_QUERY_CANCELED ;
 scalar_t__ geterrcode () ;
 int parser_errposition (int ,int ) ;

__attribute__((used)) static void
pcb_error_callback(void *arg)
{
 ParseCallbackState *pcbstate = (ParseCallbackState *) arg;

 if (geterrcode() != ERRCODE_QUERY_CANCELED)
  (void) parser_errposition(pcbstate->pstate, pcbstate->location);
}
