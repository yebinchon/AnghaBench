
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct grub_nilfs2_dir_closure {int (* hook ) (char const*,struct grub_dirhook_info*,int ) ;int closure; int data; } ;
struct grub_dirhook_info {int mtimeset; int dir; int mtime; } ;
typedef int info ;
typedef TYPE_1__* grub_fshelp_node_t ;
typedef enum grub_fshelp_filetype { ____Placeholder_grub_fshelp_filetype } grub_fshelp_filetype ;
struct TYPE_6__ {int i_mtime; } ;
struct TYPE_5__ {int inode_read; TYPE_3__ inode; int ino; } ;


 scalar_t__ GRUB_ERR_NONE ;
 int GRUB_FSHELP_DIR ;
 int GRUB_FSHELP_TYPE_MASK ;
 scalar_t__ grub_errno ;
 int grub_free (TYPE_1__*) ;
 int grub_le_to_cpu64 (int ) ;
 int grub_memset (struct grub_dirhook_info*,int ,int) ;
 int grub_nilfs2_read_inode (int ,int ,TYPE_3__*) ;
 int stub1 (char const*,struct grub_dirhook_info*,int ) ;

__attribute__((used)) static int
iterate (const char *filename,
  enum grub_fshelp_filetype filetype,
  grub_fshelp_node_t node,
  void *closure)
{
  struct grub_nilfs2_dir_closure *c = closure;
  struct grub_dirhook_info info;
  grub_memset (&info, 0, sizeof (info));
  if (!node->inode_read)
    {
      grub_nilfs2_read_inode (c->data, node->ino, &node->inode);
      if (!grub_errno)
 node->inode_read = 1;
      grub_errno = GRUB_ERR_NONE;
    }
  if (node->inode_read)
    {
      info.mtimeset = 1;
      info.mtime = grub_le_to_cpu64 (node->inode.i_mtime);
    }

  info.dir = ((filetype & GRUB_FSHELP_TYPE_MASK) == GRUB_FSHELP_DIR);
  grub_free (node);
  return c->hook (filename, &info, c->closure);
}
