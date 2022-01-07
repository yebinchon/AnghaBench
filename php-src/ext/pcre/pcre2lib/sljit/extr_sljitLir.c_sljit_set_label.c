
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sljit_label {int dummy; } ;
struct TYPE_2__ {struct sljit_label* label; } ;
struct sljit_jump {TYPE_1__ u; int flags; } ;


 int JUMP_ADDR ;
 int JUMP_LABEL ;
 scalar_t__ SLJIT_LIKELY (int) ;

void sljit_set_label(struct sljit_jump *jump, struct sljit_label* label)
{
 if (SLJIT_LIKELY(!!jump) && SLJIT_LIKELY(!!label)) {
  jump->flags &= ~JUMP_ADDR;
  jump->flags |= JUMP_LABEL;
  jump->u.label = label;
 }
}
