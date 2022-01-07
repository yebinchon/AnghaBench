
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* grub_dl_t ;
struct TYPE_5__ {int name; } ;


 int GRUB_ERR_BAD_MODULE ;
 int GRUB_ERR_FILE_NOT_FOUND ;
 TYPE_1__* grub_dl_get (char const*) ;
 TYPE_1__* grub_dl_load_file (char*) ;
 char* grub_env_get (char*) ;
 int grub_error (int ,char*) ;
 int grub_free (char*) ;
 scalar_t__ grub_strcmp (int ,char const*) ;
 char* grub_xasprintf (char*,char*,char const*) ;

grub_dl_t
grub_dl_load (const char *name)
{




  char *filename;
  grub_dl_t mod;
  char *grub_dl_dir = grub_env_get ("prefix");

  mod = grub_dl_get (name);
  if (mod)
    return mod;

  if (! grub_dl_dir) {
    grub_error (GRUB_ERR_FILE_NOT_FOUND, "\"prefix\" is not set");
    return 0;
  }

  filename = grub_xasprintf ("%s/%s.mod", grub_dl_dir, name);
  if (! filename)
    return 0;

  mod = grub_dl_load_file (filename);
  grub_free (filename);

  if (! mod)
    return 0;

  if (grub_strcmp (mod->name, name) != 0)
    grub_error (GRUB_ERR_BAD_MODULE, "mismatched names");

  return mod;

}
