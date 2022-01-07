
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int p_isEOF (int *) ;
 int p_isalnum (int *) ;
 int p_isalpha (int *) ;
 int p_isdigit (int *) ;
 int p_iseqC (int *) ;
 int p_islower (int *) ;
 int p_isneC (int *) ;
 int p_isnotalnum (int *) ;
 int p_isnotalpha (int *) ;
 int p_isnotdigit (int *) ;
 int p_isnotlower (int *) ;
 int p_isnotprint (int *) ;
 int p_isnotpunct (int *) ;
 int p_isnotspace (int *) ;
 int p_isnotupper (int *) ;
 int p_isnotxdigit (int *) ;
 int p_isprint (int *) ;
 int p_ispunct (int *) ;
 int p_isspace (int *) ;
 int p_isupper (int *) ;
 int p_isxdigit (int *) ;

void
_make_compiler_happy(void)
{
 p_isalnum(((void*)0));
 p_isnotalnum(((void*)0));
 p_isalpha(((void*)0));
 p_isnotalpha(((void*)0));
 p_isdigit(((void*)0));
 p_isnotdigit(((void*)0));
 p_islower(((void*)0));
 p_isnotlower(((void*)0));
 p_isprint(((void*)0));
 p_isnotprint(((void*)0));
 p_ispunct(((void*)0));
 p_isnotpunct(((void*)0));
 p_isspace(((void*)0));
 p_isnotspace(((void*)0));
 p_isupper(((void*)0));
 p_isnotupper(((void*)0));
 p_isxdigit(((void*)0));
 p_isnotxdigit(((void*)0));
 p_isEOF(((void*)0));
 p_iseqC(((void*)0));
 p_isneC(((void*)0));
}
