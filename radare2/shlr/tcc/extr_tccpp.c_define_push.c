
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* sym_define; } ;
struct TYPE_6__ {int* d; struct TYPE_6__* next; } ;
typedef TYPE_1__ Sym ;


 int TOK_IDENT ;
 TYPE_1__* define_find (int) ;
 int define_stack ;
 int get_tok_str (int,int *) ;
 int macro_is_equal (int*,int*) ;
 TYPE_1__* sym_push2 (int *,int,int,int ) ;
 TYPE_2__** table_ident ;
 int tcc_warning (char*,int ) ;

void define_push(int v, int macro_type, int *str, Sym *first_arg)
{
 Sym *s;

 s = define_find (v);
 if (s && !macro_is_equal (s->d, str)) {
  tcc_warning ("%s redefined", get_tok_str (v, ((void*)0)));
 }

 s = sym_push2 (&define_stack, v, macro_type, 0);
 if (!s) {
  return;
 }
 s->d = str;
 s->next = first_arg;
 if (v >= TOK_IDENT) {
  table_ident[v - TOK_IDENT]->sym_define = s;
 }
}
