
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ grub_ssize_t ;
typedef int * grub_file_t ;
typedef TYPE_1__* grub_dl_t ;
struct TYPE_4__ {scalar_t__ ref_count; } ;


 TYPE_1__* grub_dl_load_core (void*,scalar_t__) ;
 int grub_file_close (int *) ;
 int * grub_file_open (char const*) ;
 int grub_file_read (int *,void*,scalar_t__) ;
 scalar_t__ grub_file_size (int *) ;
 int grub_free (void*) ;
 void* grub_malloc (scalar_t__) ;

grub_dl_t
grub_dl_load_file (const char *filename)
{
  grub_file_t file = ((void*)0);
  grub_ssize_t size;
  void *core = 0;
  grub_dl_t mod = 0;

  file = grub_file_open (filename);
  if (! file)
    return 0;

  size = grub_file_size (file);
  core = grub_malloc (size);
  if (! core)
    {
      grub_file_close (file);
      return 0;
    }

  if (grub_file_read (file, core, size) != (int) size)
    {
      grub_file_close (file);
      grub_free (core);
      return 0;
    }




  grub_file_close (file);

  mod = grub_dl_load_core (core, size);
  if (! mod)
    {
      grub_free (core);
      return 0;
    }

  mod->ref_count = 0;
  return mod;
}
