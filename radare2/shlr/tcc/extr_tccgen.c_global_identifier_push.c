
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* sym_identifier; } ;
struct TYPE_5__ {struct TYPE_5__* prev_tok; } ;
typedef TYPE_1__ Sym ;


 int SYM_FIRST_ANOM ;
 int SYM_STRUCT ;
 int TOK_IDENT ;
 int eprintf (char*) ;
 int global_stack ;
 TYPE_1__* sym_push2 (int *,int,int,long long) ;
 TYPE_2__** table_ident ;

Sym *global_identifier_push(int v, int t, long long c) {
 Sym *s, **ps;
 s = sym_push2 (&global_stack, v, t, c);

 if (s && v < SYM_FIRST_ANOM) {
  int i = (v & ~SYM_STRUCT);
  if (i < TOK_IDENT) {
   eprintf ("Not found\n");
   return ((void*)0);
  }
  ps = &table_ident[i - TOK_IDENT]->sym_identifier;


  while (*ps) {
   ps = &(*ps)->prev_tok;
  }
  s->prev_tok = ((void*)0);
  *ps = s;
 }
 return s;
}
