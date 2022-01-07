
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int iseq; int pc; int lastlabel; } ;
typedef TYPE_1__ codegen_scope ;


 int PEEK_S (int) ;
 int emit_S (TYPE_1__*,int,int ) ;

__attribute__((used)) static int
dispatch(codegen_scope *s, uint16_t pos0)
{
  uint16_t newpos;

  s->lastlabel = s->pc;
  newpos = PEEK_S(s->iseq+pos0);
  emit_S(s, pos0, s->pc);
  return newpos;
}
