
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_env_var {struct grub_env_var* next; struct grub_env_var** prevp; int name; } ;
struct grub_env_context {struct grub_env_var** vars; } ;


 int grub_env_hashval (int ) ;

__attribute__((used)) static void
grub_env_insert (struct grub_env_context *context,
   struct grub_env_var *var)
{
  int idx = grub_env_hashval (var->name);


  var->prevp = &context->vars[idx];
  var->next = context->vars[idx];
  if (var->next)
    var->next->prevp = &(var->next);
  context->vars[idx] = var;
}
