
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * compl_match_array ;
 int pum_undisplay () ;
 int vim_free (int *) ;

__attribute__((used)) static void
ins_compl_del_pum()
{
    if (compl_match_array != ((void*)0))
    {
 pum_undisplay();
 vim_free(compl_match_array);
 compl_match_array = ((void*)0);
    }
}
