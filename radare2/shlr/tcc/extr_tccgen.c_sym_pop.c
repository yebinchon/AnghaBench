
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* sym_identifier; TYPE_2__* sym_struct; } ;
typedef TYPE_1__ TokenSym ;
struct TYPE_8__ {int v; struct TYPE_8__* prev_tok; struct TYPE_8__* prev; } ;
typedef TYPE_2__ Sym ;


 int SYM_FIELD ;
 int SYM_FIRST_ANOM ;
 int SYM_STRUCT ;
 int TOK_IDENT ;
 int eprintf (char*) ;
 int sym_free (TYPE_2__*) ;
 TYPE_1__** table_ident ;

void sym_pop(Sym **ptop, Sym *b) {
 Sym *s, *ss, **ps;
 TokenSym *ts;
 int v;
 if (!b) {
  return;
 }

 s = *ptop;
 while (s != b) {
  ss = s->prev;
  v = s->v;


  if (!(v & SYM_FIELD) && (v & ~SYM_STRUCT) < SYM_FIRST_ANOM) {
   int i = (v & ~SYM_STRUCT);
   if (i < TOK_IDENT) {
    eprintf ("Not found\n");
    return;
   }
   ts = table_ident[i - TOK_IDENT];
   if (v & SYM_STRUCT) {
    ps = &ts->sym_struct;
   } else {
    ps = &ts->sym_identifier;
   }
   *ps = s->prev_tok;
  }
  sym_free (s);
  s = ss;
 }
 *ptop = b;
}
