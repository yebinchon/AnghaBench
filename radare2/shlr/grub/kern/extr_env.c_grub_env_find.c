
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grub_env_var {int name; struct grub_env_var* next; } ;
struct TYPE_2__ {struct grub_env_var** vars; } ;


 TYPE_1__* grub_current_context ;
 int grub_env_hashval (char const*) ;
 scalar_t__ grub_strcmp (int ,char const*) ;

struct grub_env_var *
grub_env_find (const char *name)
{
  struct grub_env_var *var;
  int idx = grub_env_hashval (name);


  for (var = grub_current_context->vars[idx]; var; var = var->next)
    if (grub_strcmp (var->name, name) == 0)
      return var;

  return 0;
}
