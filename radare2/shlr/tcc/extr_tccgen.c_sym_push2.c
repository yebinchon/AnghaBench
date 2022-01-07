
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int t; int * ref; } ;
struct TYPE_9__ {int v; long long c; struct TYPE_9__* prev; int * next; int * d; TYPE_1__ type; int * asm_label; } ;
typedef TYPE_2__ Sym ;


 int SYM_FIELD ;
 int SYM_FIRST_ANOM ;
 int SYM_STRUCT ;
 int get_tok_str (int,int *) ;
 TYPE_2__* local_stack ;
 TYPE_2__* scope_stack_bottom ;
 TYPE_2__* sym_malloc () ;
 int tcc_error (char*,int ) ;

Sym *sym_push2(Sym **ps, int v, int t, long long c) {
 Sym *s;
 if (ps == &local_stack) {
  for (s = *ps; s && s != scope_stack_bottom; s = s->prev) {
   if (!(v & SYM_FIELD) && (v & ~SYM_STRUCT) < SYM_FIRST_ANOM && s->v == v) {
    tcc_error ("incompatible types for redefinition of '%s'",
     get_tok_str (v, ((void*)0)));
    return ((void*)0);
   }
  }
 }


 s = sym_malloc ();
 s->asm_label = ((void*)0);
 s->v = v;
 s->type.t = t;
 s->type.ref = ((void*)0);



 s->c = c;
 s->next = ((void*)0);

 s->prev = *ps;
 *ps = s;
 return s;
}
