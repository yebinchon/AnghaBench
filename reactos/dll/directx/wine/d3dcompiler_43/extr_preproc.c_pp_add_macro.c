
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int * mtext; } ;
struct TYPE_11__ {char* ident; int nargs; struct TYPE_11__* prev; struct TYPE_11__* next; int linenumber; int filename; TYPE_1__ subst; int ** margs; int type; } ;
typedef TYPE_2__ pp_entry_t ;
typedef int mtext_t ;
typedef int marg_t ;
struct TYPE_13__ {TYPE_2__** defines; } ;
struct TYPE_12__ {char* input; int line_number; scalar_t__ pedantic; } ;


 int def_macro ;
 int free (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_6__* pp_def_state ;
 int pp_del_define (char*) ;
 TYPE_5__ pp_status ;
 TYPE_2__* pp_xmalloc (int) ;
 int pp_xstrdup (char*) ;
 int pphash (char*) ;
 TYPE_2__* pplookup (char*) ;
 int ppy_warning (char*,char*,int ,int ) ;

pp_entry_t *pp_add_macro(char *id, marg_t *args[], int nargs, mtext_t *exp)
{
 int idx;
 pp_entry_t *ppp;

 if(!id)
  return ((void*)0);
 idx = pphash(id);
 if((ppp = pplookup(id)) != ((void*)0))
 {
  if(pp_status.pedantic)
   ppy_warning("Redefinition of %s\n\tPrevious definition: %s:%d", id, ppp->filename, ppp->linenumber);
  pp_del_define(id);
 }
 ppp = pp_xmalloc(sizeof(pp_entry_t));
 if(!ppp)
  return ((void*)0);
 memset( ppp, 0, sizeof(*ppp) );
 ppp->ident = id;
 ppp->type = def_macro;
 ppp->margs = args;
 ppp->nargs = nargs;
 ppp->subst.mtext= exp;
 ppp->filename = pp_xstrdup(pp_status.input ? pp_status.input : "<internal or cmdline>");
 if(!ppp->filename)
 {
  free(ppp);
  return ((void*)0);
 }
 ppp->linenumber = pp_status.input ? pp_status.line_number : 0;
 ppp->next = pp_def_state->defines[idx];
 pp_def_state->defines[idx] = ppp;
 if(ppp->next)
  ppp->next->prev = ppp;
 return ppp;
}
