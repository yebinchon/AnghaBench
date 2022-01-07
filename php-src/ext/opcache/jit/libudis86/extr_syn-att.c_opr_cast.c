
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud_operand {int size; } ;
struct ud {int dummy; } ;


 int ud_asmprintf (struct ud*,char*) ;

__attribute__((used)) static void
opr_cast(struct ud* u, struct ud_operand* op)
{
  switch(op->size) {
  case 16 : case 32 :
    ud_asmprintf(u, "*"); break;
  default: break;
  }
}
