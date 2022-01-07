
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_env_var {struct grub_env_var* value; struct grub_env_var* name; scalar_t__ write_hook; scalar_t__ read_hook; } ;


 struct grub_env_var* grub_env_find (char const*) ;
 int grub_env_remove (struct grub_env_var*) ;
 int grub_env_set (char const*,char*) ;
 int grub_free (struct grub_env_var*) ;

void
grub_env_unset (const char *name)
{
  struct grub_env_var *var;

  var = grub_env_find (name);
  if (! var)
    return;

  if (var->read_hook || var->write_hook)
    {
      grub_env_set (name, "");
      return;
    }

  grub_env_remove (var);

  grub_free (var->name);
  grub_free (var->value);
  grub_free (var);
}
