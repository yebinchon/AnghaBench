
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int symlink; } ;
struct grub_fshelp_node {TYPE_1__ inode; int ino; int data; int inode_read; } ;
typedef struct grub_fshelp_node* grub_fshelp_node_t ;


 scalar_t__ grub_errno ;
 int grub_ext2_read_file (struct grub_fshelp_node*,int ,int ,int ,int ,size_t,char*) ;
 int grub_ext2_read_inode (int ,int ,TYPE_1__*) ;
 int grub_free (char*) ;
 size_t grub_le_to_cpu32 (int ) ;
 char* grub_malloc (int) ;
 int grub_strncpy (char*,int ,size_t) ;

__attribute__((used)) static char *
grub_ext2_read_symlink (grub_fshelp_node_t node)
{
  char *symlink;
  struct grub_fshelp_node *diro = node;

  if (! diro->inode_read)
    {
      grub_ext2_read_inode (diro->data, diro->ino, &diro->inode);
      if (grub_errno)
 return 0;
    }

  symlink = grub_malloc (grub_le_to_cpu32 (diro->inode.size) + 1);
  if (! symlink)
    return 0;




  if (grub_le_to_cpu32 (diro->inode.size) <= 60)
    grub_strncpy (symlink,
    diro->inode.symlink,
    grub_le_to_cpu32 (diro->inode.size));
  else
    {
      grub_ext2_read_file (diro, 0, 0, 0, 0,
      grub_le_to_cpu32 (diro->inode.size),
      symlink);
      if (grub_errno)
 {
   grub_free (symlink);
   return 0;
 }
    }

  symlink[grub_le_to_cpu32 (diro->inode.size)] = '\0';
  return symlink;
}
