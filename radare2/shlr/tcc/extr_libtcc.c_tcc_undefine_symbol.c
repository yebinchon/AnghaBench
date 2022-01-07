
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tok; } ;
typedef TYPE_1__ TokenSym ;
typedef int TCCState ;
typedef int Sym ;


 int * define_find (int ) ;
 int define_undef (int *) ;
 int strlen (char const*) ;
 TYPE_1__* tok_alloc (char const*,int ) ;

void tcc_undefine_symbol(TCCState *s1, const char *sym)
{
 TokenSym *ts;
 Sym *s;
 ts = tok_alloc (sym, strlen (sym));
 s = define_find (ts->tok);

 if (s) {
  define_undef (s);
 }
}
