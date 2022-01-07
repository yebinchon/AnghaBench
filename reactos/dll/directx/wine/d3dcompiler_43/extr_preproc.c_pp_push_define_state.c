
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int defines; } ;
typedef TYPE_1__ pp_def_state_t ;


 int memset (int ,int ,int) ;
 TYPE_1__* pp_def_state ;
 TYPE_1__* pp_xmalloc (int) ;

int pp_push_define_state(void)
{
    pp_def_state_t *state = pp_xmalloc( sizeof(*state) );
    if(!state)
        return 1;

    memset( state->defines, 0, sizeof(state->defines) );
    state->next = pp_def_state;
    pp_def_state = state;
    return 0;
}
