
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ itemtype; struct TYPE_2__* prev; } ;


 int Assert (int ) ;
 scalar_t__ PLPGSQL_NSTYPE_LABEL ;
 TYPE_1__* ns_top ;

void
plpgsql_ns_pop(void)
{
 Assert(ns_top != ((void*)0));
 while (ns_top->itemtype != PLPGSQL_NSTYPE_LABEL)
  ns_top = ns_top->prev;
 ns_top = ns_top->prev;
}
