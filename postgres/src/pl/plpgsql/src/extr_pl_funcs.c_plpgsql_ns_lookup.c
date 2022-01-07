
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ itemtype; struct TYPE_4__* prev; int name; } ;
typedef TYPE_1__ PLpgSQL_nsitem ;


 scalar_t__ PLPGSQL_NSTYPE_LABEL ;
 scalar_t__ PLPGSQL_NSTYPE_VAR ;
 scalar_t__ strcmp (int ,char const*) ;

PLpgSQL_nsitem *
plpgsql_ns_lookup(PLpgSQL_nsitem *ns_cur, bool localmode,
      const char *name1, const char *name2, const char *name3,
      int *names_used)
{

 while (ns_cur != ((void*)0))
 {
  PLpgSQL_nsitem *nsitem;


  for (nsitem = ns_cur;
    nsitem->itemtype != PLPGSQL_NSTYPE_LABEL;
    nsitem = nsitem->prev)
  {
   if (strcmp(nsitem->name, name1) == 0)
   {
    if (name2 == ((void*)0) ||
     nsitem->itemtype != PLPGSQL_NSTYPE_VAR)
    {
     if (names_used)
      *names_used = 1;
     return nsitem;
    }
   }
  }


  if (name2 != ((void*)0) &&
   strcmp(nsitem->name, name1) == 0)
  {
   for (nsitem = ns_cur;
     nsitem->itemtype != PLPGSQL_NSTYPE_LABEL;
     nsitem = nsitem->prev)
   {
    if (strcmp(nsitem->name, name2) == 0)
    {
     if (name3 == ((void*)0) ||
      nsitem->itemtype != PLPGSQL_NSTYPE_VAR)
     {
      if (names_used)
       *names_used = 2;
      return nsitem;
     }
    }
   }
  }

  if (localmode)
   break;

  ns_cur = nsitem->prev;
 }


 if (names_used)
  *names_used = 0;
 return ((void*)0);
}
