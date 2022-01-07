
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_iso9660_read_symlink_closure {int symlink; } ;


 int grub_realloc (int ,int) ;
 int grub_strlen (int ) ;
 int grub_strncat (int ,char const*,int) ;

__attribute__((used)) static void
add_part (const char *part, int len,
   struct grub_iso9660_read_symlink_closure *c)
{
  int size = grub_strlen (c->symlink);

  c->symlink = grub_realloc (c->symlink, size + len + 1);
  if (! c->symlink)
    return;

  grub_strncat (c->symlink, part, len);
}
