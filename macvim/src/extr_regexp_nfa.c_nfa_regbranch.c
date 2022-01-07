
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMIT (int ) ;
 scalar_t__ FAIL ;
 int Magic (char) ;
 int NFA_CONCAT ;
 int NFA_EMPTY ;
 int NFA_NOPEN ;
 int NFA_PREV_ATOM_NO_WIDTH ;
 int OK ;
 scalar_t__ nfa_regconcat () ;
 int peekchr () ;
 scalar_t__ post_ptr ;
 scalar_t__ post_start ;
 int skipchr () ;

__attribute__((used)) static int
nfa_regbranch()
{
    int ch;
    int old_post_pos;

    old_post_pos = (int)(post_ptr - post_start);


    if (nfa_regconcat() == FAIL)
 return FAIL;

    ch = peekchr();

    while (ch == Magic('&'))
    {
 skipchr();
 EMIT(NFA_NOPEN);
 EMIT(NFA_PREV_ATOM_NO_WIDTH);
 old_post_pos = (int)(post_ptr - post_start);
 if (nfa_regconcat() == FAIL)
     return FAIL;

 if (old_post_pos == (int)(post_ptr - post_start))
     EMIT(NFA_EMPTY);
 EMIT(NFA_CONCAT);
 ch = peekchr();
    }


    if (old_post_pos == (int)(post_ptr - post_start))
 EMIT(NFA_EMPTY);

    return OK;
}
