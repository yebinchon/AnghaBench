
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_iso9660_susp_entry {scalar_t__ sig; } ;
struct grub_iso9660_data {int rockridge; } ;
typedef int grub_err_t ;


 scalar_t__ grub_strncmp (char*,char*,int) ;

__attribute__((used)) static grub_err_t
susp_iterate (struct grub_iso9660_susp_entry *susp_entry,
       void *closure)
{
  struct grub_iso9660_data *data = closure;


  if (grub_strncmp ((char *) susp_entry->sig, "ER", 2) == 0)
    {
      data->rockridge = 1;
      return 1;
    }
  return 0;
}
