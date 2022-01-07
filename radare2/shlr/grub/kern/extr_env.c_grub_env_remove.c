
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grub_env_var {TYPE_1__** prevp; TYPE_1__* next; } ;
struct TYPE_2__ {struct TYPE_2__** prevp; } ;



__attribute__((used)) static void
grub_env_remove (struct grub_env_var *var)
{

  *var->prevp = var->next;
  if (var->next)
    var->next->prevp = var->prevp;
}
