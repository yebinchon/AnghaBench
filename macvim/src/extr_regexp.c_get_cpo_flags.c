
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPO_BACKSL ;
 int CPO_LITERAL ;
 int p_cpo ;
 int reg_cpo_bsl ;
 int reg_cpo_lit ;
 int * vim_strchr (int ,int ) ;

__attribute__((used)) static void
get_cpo_flags()
{
    reg_cpo_lit = vim_strchr(p_cpo, CPO_LITERAL) != ((void*)0);
    reg_cpo_bsl = vim_strchr(p_cpo, CPO_BACKSL) != ((void*)0);
}
