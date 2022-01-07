
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int target; } ;
struct sljit_jump {TYPE_1__ u; int flags; } ;
typedef int sljit_uw ;


 int JUMP_ADDR ;
 int JUMP_LABEL ;
 scalar_t__ SLJIT_LIKELY (int) ;

void sljit_set_target(struct sljit_jump *jump, sljit_uw target)
{
 if (SLJIT_LIKELY(!!jump)) {
  jump->flags &= ~JUMP_LABEL;
  jump->flags |= JUMP_ADDR;
  jump->u.target = target;
 }
}
