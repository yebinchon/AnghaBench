
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_jfs_diropen {struct grub_jfs_diropen* dirpage; } ;


 int grub_free (struct grub_jfs_diropen*) ;

__attribute__((used)) static void
grub_jfs_closedir (struct grub_jfs_diropen *diro)
{
  if (!diro)
    return;
  grub_free (diro->dirpage);
  grub_free (diro);
}
