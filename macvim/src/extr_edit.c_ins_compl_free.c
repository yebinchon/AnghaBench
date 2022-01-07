
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int cp_flags; struct TYPE_7__** cp_text; struct TYPE_7__* cp_fname; struct TYPE_7__* cp_str; struct TYPE_7__* cp_next; } ;
typedef TYPE_1__ compl_T ;


 int CPT_COUNT ;
 int FREE_FNAME ;
 TYPE_1__* compl_curr_match ;
 TYPE_1__* compl_first_match ;
 TYPE_1__* compl_leader ;
 TYPE_1__* compl_pattern ;
 int * compl_shown_match ;
 int ins_compl_del_pum () ;
 int pum_clear () ;
 int vim_free (TYPE_1__*) ;

__attribute__((used)) static void
ins_compl_free()
{
    compl_T *match;
    int i;

    vim_free(compl_pattern);
    compl_pattern = ((void*)0);
    vim_free(compl_leader);
    compl_leader = ((void*)0);

    if (compl_first_match == ((void*)0))
 return;

    ins_compl_del_pum();
    pum_clear();

    compl_curr_match = compl_first_match;
    do
    {
 match = compl_curr_match;
 compl_curr_match = compl_curr_match->cp_next;
 vim_free(match->cp_str);

 if (match->cp_flags & FREE_FNAME)
     vim_free(match->cp_fname);
 for (i = 0; i < CPT_COUNT; ++i)
     vim_free(match->cp_text[i]);
 vim_free(match);
    } while (compl_curr_match != ((void*)0) && compl_curr_match != compl_first_match);
    compl_first_match = compl_curr_match = ((void*)0);
    compl_shown_match = ((void*)0);
}
