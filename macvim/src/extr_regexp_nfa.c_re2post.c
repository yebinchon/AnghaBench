
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMIT (int ) ;
 scalar_t__ FAIL ;
 int NFA_MOPEN ;
 int REG_NOPAREN ;
 scalar_t__ nfa_reg (int ) ;
 int* post_start ;

__attribute__((used)) static int *
re2post()
{
    if (nfa_reg(REG_NOPAREN) == FAIL)
 return ((void*)0);
    EMIT(NFA_MOPEN);
    return post_start;
}
