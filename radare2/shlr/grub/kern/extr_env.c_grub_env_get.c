
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_env_var {char* (* read_hook ) (struct grub_env_var*,char*) ;char* value; } ;


 struct grub_env_var* grub_env_find (char const*) ;
 char* stub1 (struct grub_env_var*,char*) ;

char *
grub_env_get (const char *name)
{
  struct grub_env_var *var;

  var = grub_env_find (name);
  if (! var)
    return 0;

  if (var->read_hook)
    return var->read_hook (var, var->value);

  return var->value;
}
