
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* prev; struct TYPE_8__* next; struct TYPE_8__* iep; struct TYPE_8__* filename; } ;
typedef TYPE_2__ pp_entry_t ;
struct TYPE_9__ {TYPE_2__** defines; } ;
struct TYPE_7__ {TYPE_2__* next; } ;


 int free (TYPE_2__*) ;
 TYPE_4__* pp_def_state ;
 TYPE_2__* pp_includelogiclist ;

__attribute__((used)) static void free_pp_entry( pp_entry_t *ppp, int idx )
{
 if(ppp->iep)
 {
  if(ppp->iep == pp_includelogiclist)
  {
   pp_includelogiclist = ppp->iep->next;
   if(pp_includelogiclist)
    pp_includelogiclist->prev = ((void*)0);
  }
  else
  {
   ppp->iep->prev->next = ppp->iep->next;
   if(ppp->iep->next)
    ppp->iep->next->prev = ppp->iep->prev;
  }
  free(ppp->iep->filename);
  free(ppp->iep);
 }

 if(pp_def_state->defines[idx] == ppp)
 {
  pp_def_state->defines[idx] = ppp->next;
  if(pp_def_state->defines[idx])
   pp_def_state->defines[idx]->prev = ((void*)0);
 }
 else
 {
  ppp->prev->next = ppp->next;
  if(ppp->next)
   ppp->next->prev = ppp->prev;
 }

 free(ppp);
}
