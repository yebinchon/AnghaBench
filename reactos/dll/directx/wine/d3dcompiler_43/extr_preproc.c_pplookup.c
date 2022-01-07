
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ident; struct TYPE_4__* next; } ;
typedef TYPE_1__ pp_entry_t ;
struct TYPE_5__ {TYPE_1__** defines; } ;


 TYPE_3__* pp_def_state ;
 int pphash (char const*) ;
 int strcmp (char const*,int ) ;

pp_entry_t *pplookup(const char *ident)
{
 int idx;
 pp_entry_t *ppp;

 if(!ident)
  return ((void*)0);
 idx = pphash(ident);
 for(ppp = pp_def_state->defines[idx]; ppp; ppp = ppp->next)
 {
  if(!strcmp(ident, ppp->ident))
   return ppp;
 }
 return ((void*)0);
}
