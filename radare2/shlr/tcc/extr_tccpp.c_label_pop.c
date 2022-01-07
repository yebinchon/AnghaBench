
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int sym_label; } ;
struct TYPE_6__ {scalar_t__ r; size_t v; int prev_tok; struct TYPE_6__* prev; } ;
typedef TYPE_1__ Sym ;


 scalar_t__ LABEL_DECLARED ;
 scalar_t__ LABEL_FORWARD ;
 size_t TOK_IDENT ;
 int get_tok_str (size_t,int *) ;
 int sym_free (TYPE_1__*) ;
 TYPE_2__** table_ident ;
 int tcc_error (char*,int ) ;
 int tcc_warning (char*,int ) ;

void label_pop(Sym **ptop, Sym *slast)
{
 Sym *s, *s1;
 for (s = *ptop; s != slast; s = s1) {
  s1 = s->prev;
  if (s->r == LABEL_DECLARED) {
   tcc_warning ("label '%s' declared but not used", get_tok_str (s->v, ((void*)0)));
  } else if (s->r == LABEL_FORWARD) {
   tcc_error ("label '%s' used but not defined",
    get_tok_str (s->v, ((void*)0)));
  }

  table_ident[s->v - TOK_IDENT]->sym_label = s->prev_tok;
  sym_free (s);
 }
 *ptop = slast;
}
