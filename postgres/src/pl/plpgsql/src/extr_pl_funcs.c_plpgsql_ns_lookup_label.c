
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ itemtype; struct TYPE_4__* prev; int name; } ;
typedef TYPE_1__ PLpgSQL_nsitem ;


 scalar_t__ PLPGSQL_NSTYPE_LABEL ;
 scalar_t__ strcmp (int ,char const*) ;

PLpgSQL_nsitem *
plpgsql_ns_lookup_label(PLpgSQL_nsitem *ns_cur, const char *name)
{
 while (ns_cur != ((void*)0))
 {
  if (ns_cur->itemtype == PLPGSQL_NSTYPE_LABEL &&
   strcmp(ns_cur->name, name) == 0)
   return ns_cur;
  ns_cur = ns_cur->prev;
 }

 return ((void*)0);
}
