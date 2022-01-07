
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ mrb_sym ;
struct TYPE_5__ {int scapa; TYPE_3__* irep; } ;
typedef TYPE_1__ codegen_scope ;
struct TYPE_6__ {int slen; scalar_t__* syms; } ;


 scalar_t__ codegen_realloc (TYPE_1__*,scalar_t__*,int) ;
 int mrb_assert (TYPE_3__*) ;

__attribute__((used)) static int
new_sym(codegen_scope *s, mrb_sym sym)
{
  int i, len;

  mrb_assert(s->irep);

  len = s->irep->slen;
  for (i=0; i<len; i++) {
    if (s->irep->syms[i] == sym) return i;
  }
  if (s->irep->slen >= s->scapa) {
    s->scapa *= 2;
    s->irep->syms = (mrb_sym*)codegen_realloc(s, s->irep->syms, sizeof(mrb_sym)*s->scapa);
  }
  s->irep->syms[s->irep->slen] = sym;
  return s->irep->slen++;
}
