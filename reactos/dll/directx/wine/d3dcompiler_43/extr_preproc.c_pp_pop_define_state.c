
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ident; } ;
typedef TYPE_1__ pp_entry_t ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__** defines; } ;
typedef TYPE_2__ pp_def_state_t ;


 int HASHKEY ;
 int free (TYPE_2__*) ;
 TYPE_2__* pp_def_state ;
 int pp_del_define (int ) ;

void pp_pop_define_state(void)
{
    int i;
    pp_entry_t *ppp;
    pp_def_state_t *state;

    for (i = 0; i < HASHKEY; i++)
    {
        while ((ppp = pp_def_state->defines[i]) != ((void*)0)) pp_del_define( ppp->ident );
    }
    state = pp_def_state;
    pp_def_state = state->next;
    free( state );
}
