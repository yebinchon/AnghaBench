
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ itemtype; scalar_t__ itemno; struct TYPE_4__* prev; } ;
typedef TYPE_1__ PLpgSQL_nsitem ;


 scalar_t__ PLPGSQL_LABEL_LOOP ;
 scalar_t__ PLPGSQL_NSTYPE_LABEL ;

PLpgSQL_nsitem *
plpgsql_ns_find_nearest_loop(PLpgSQL_nsitem *ns_cur)
{
 while (ns_cur != ((void*)0))
 {
  if (ns_cur->itemtype == PLPGSQL_NSTYPE_LABEL &&
   ns_cur->itemno == PLPGSQL_LABEL_LOOP)
   return ns_cur;
  ns_cur = ns_cur->prev;
 }

 return ((void*)0);
}
