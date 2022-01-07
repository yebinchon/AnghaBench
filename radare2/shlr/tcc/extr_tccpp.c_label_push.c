
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* sym_label; } ;
struct TYPE_8__ {int r; struct TYPE_8__* prev_tok; } ;
typedef TYPE_1__ Sym ;


 int TOK_IDENT ;
 TYPE_1__* global_label_stack ;
 TYPE_1__* sym_push2 (TYPE_1__**,int,int ,int ) ;
 TYPE_2__** table_ident ;

Sym *label_push(Sym **ptop, int v, int flags)
{
 Sym *s, **ps;
 s = sym_push2 (ptop, v, 0, 0);
 if (!s) {
  return s;
 }
 s->r = flags;
 ps = &table_ident[v - TOK_IDENT]->sym_label;
 if (ptop == &global_label_stack) {


  while (*ps != ((void*)0))
   ps = &(*ps)->prev_tok;
 }
 s->prev_tok = *ps;
 *ps = s;
 return s;
}
