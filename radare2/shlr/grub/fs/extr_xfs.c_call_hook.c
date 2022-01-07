
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct grub_xfs_iterate_dir_closure {int (* hook ) (char*,int ,struct grub_fshelp_node*,int ) ;int closure; TYPE_2__* diro; } ;
struct grub_xfs_inode {int dummy; } ;
struct TYPE_8__ {int mode; } ;
struct grub_fshelp_node {int inode_read; TYPE_4__ inode; TYPE_3__* data; int ino; } ;
typedef int grub_uint64_t ;
struct TYPE_5__ {int log2_inode; } ;
struct TYPE_7__ {TYPE_1__ sblock; } ;
struct TYPE_6__ {TYPE_3__* data; } ;


 struct grub_fshelp_node* grub_malloc (int) ;
 int grub_xfs_mode_to_filetype (int ) ;
 int grub_xfs_read_inode (TYPE_3__*,int ,TYPE_4__*) ;
 int stub1 (char*,int ,struct grub_fshelp_node*,int ) ;

__attribute__((used)) static int
call_hook (grub_uint64_t ino, char *filename,
    struct grub_xfs_iterate_dir_closure *c)
{
  struct grub_fshelp_node *fdiro;

  fdiro = grub_malloc (sizeof (struct grub_fshelp_node)
         - sizeof (struct grub_xfs_inode)
         + (1 << c->diro->data->sblock.log2_inode));
  if (!fdiro)
    return 0;



  fdiro->ino = ino;
  fdiro->inode_read = 1;
  fdiro->data = c->diro->data;
  grub_xfs_read_inode (fdiro->data, ino, &fdiro->inode);

  if (c->hook)
    return c->hook (filename,
    grub_xfs_mode_to_filetype (fdiro->inode.mode),
    fdiro, c->closure);
  return 0;
}
