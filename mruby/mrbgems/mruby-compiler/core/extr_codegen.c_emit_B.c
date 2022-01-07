
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint32_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ mrb_code ;
struct TYPE_5__ {size_t icapa; scalar_t__* iseq; scalar_t__* lines; scalar_t__ lineno; } ;
typedef TYPE_1__ codegen_scope ;


 size_t MAXARG_S ;
 int codegen_error (TYPE_1__*,char*) ;
 scalar_t__ codegen_realloc (TYPE_1__*,scalar_t__*,int) ;

__attribute__((used)) static void
emit_B(codegen_scope *s, uint32_t pc, uint8_t i)
{
  if (pc >= MAXARG_S || s->icapa >= MAXARG_S) {
    codegen_error(s, "too big code block");
  }
  if (pc >= s->icapa) {
    s->icapa *= 2;
    if (s->icapa > MAXARG_S) {
      s->icapa = MAXARG_S;
    }
    s->iseq = (mrb_code *)codegen_realloc(s, s->iseq, sizeof(mrb_code)*s->icapa);
    if (s->lines) {
      s->lines = (uint16_t*)codegen_realloc(s, s->lines, sizeof(uint16_t)*s->icapa);
    }
  }
  if (s->lines) {
    if (s->lineno > 0 || pc == 0)
      s->lines[pc] = s->lineno;
    else
      s->lines[pc] = s->lines[pc-1];
  }
  s->iseq[pc] = i;
}
