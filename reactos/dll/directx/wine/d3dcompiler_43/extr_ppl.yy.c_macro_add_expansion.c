
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nargs; char* curarg; scalar_t__ curargsize; scalar_t__ curargalloc; int * ppargs; TYPE_1__* ppp; } ;
typedef TYPE_2__ macexpstackentry_t ;
struct TYPE_4__ {scalar_t__ expanding; } ;


 int assert (int) ;
 int free (char*) ;
 int pp_xstrdup (char*) ;
 TYPE_2__* top_macro () ;

__attribute__((used)) static void macro_add_expansion(void)
{
 macexpstackentry_t *mep = top_macro();

 assert(mep->ppp->expanding == 0);

 mep->ppargs[mep->nargs-1] = pp_xstrdup(mep->curarg ? mep->curarg : "");
 free(mep->curarg);
 mep->curargalloc = mep->curargsize = 0;
 mep->curarg = ((void*)0);
}
