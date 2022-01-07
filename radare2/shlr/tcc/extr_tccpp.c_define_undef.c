
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * sym_define; } ;
struct TYPE_4__ {int v; } ;
typedef TYPE_1__ Sym ;


 int TOK_IDENT ;
 TYPE_2__** table_ident ;
 int tok_ident ;

void define_undef(Sym *s)
{
 int v;
 v = s->v;
 if (v >= TOK_IDENT && v < tok_ident) {
  table_ident[v - TOK_IDENT]->sym_define = ((void*)0);
 }
 s->v = 0;
}
